import 'dart:async';

import 'package:flutter/material.dart' hide Action;
import 'package:get/get.dart';
import 'package:sms_syncer/main.dart';
import 'package:sms_syncer/model/base_network_model.dart';
import 'package:sms_syncer/model/chess_model.dart';
import 'package:sms_syncer/model/server_model.dart';
import 'package:sms_syncer/pages/board.dart';
import 'package:sms_syncer/proto/message.pb.dart';

import 'package:fixnum/fixnum.dart' as $fixnum;

class ChessPage extends StatefulWidget {
  final BaseNetworkModel model;
  final String playerIdentifier;
  const ChessPage({Key? key, required this.model, required this.playerIdentifier}) : super(key: key);

  @override
  State<ChessPage> createState() => _ChessPageState();
}

const YOUR_CHANCE = "现在是你的回合哦";
const OTHER_CHANCE = "正在等待对方下棋";

class _ChessPageState extends State<ChessPage> {

  BaseNetworkModel get model => widget.model;
  ChessModel get chess => Get.find<ChessModel>();
  StreamSubscription<Action>? _action;

  var tips = "".obs;
  var _id = 0;
  final Map<int, Action> _cache = Map();
  var gaming = true;

  String getPeerIdentifier() {
    return widget.playerIdentifier == 'X' ? "O" : "X";
  }

  @override
  void initState() {
    super.initState();
    _action = model.registerOnAction(onAction);
    Get.put(ChessModel());
    updateChanceTip();
  }

  @override
  void dispose() {
    if (gaming) {
      model.sendAction(Action(
        bye: Bye(from: widget.playerIdentifier)
      )).then((_){
        try {
          model.dispose();
        } finally {
          Get.delete<ChessModel>();
        }
      });
    }
    _action?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("正在游戏"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              ),
              SizedBox(width: 8.0,),
              Text(tips.value),
            ],
          )).marginSymmetric(horizontal: 8.0,vertical: 8.0),
          Text("我：${widget.playerIdentifier}, 对方：${getPeerIdentifier()}", style: TextStyle(
            fontWeight: FontWeight.w900
          ),),
          const SizedBox(height: 8.0,),
          ChessBoard(onTapBoard)
        ],
      ),
    );
  }

  updateChanceTip() {
    if (chess.isMyChance(widget.playerIdentifier)) {
      tips.value = YOUR_CHANCE;
    } else {
      tips.value = OTHER_CHANCE;
    }
  }

  onAction(Action act) {
    switch (act.whichUnion()) {
      case Action_Union.do_1:
        // recv
        final data = act.do_1;
        if (chess.press(data, getPeerIdentifier())) {
          model.sendAction(Action(
            doConfirm: DoRequestConfirm(
              id: data.id,
              accept: true
            )
          ));
        } else {
          model.sendAction(Action(
              doConfirm: DoRequestConfirm(
                  id: data.id,
                  accept: false
              )
          ));
        }
        break;
      case Action_Union.doConfirm:
        final data = act.doConfirm;
        if (!data.accept) {
          break;
        }
        final originData = _cache[data.id]?.do_1;
        if (originData == null){
          return;
        }
        chess.press(originData, widget.playerIdentifier);
        _checkWin();
        break;
      case Action_Union.declareWin:
        if (chess.checkWin(getPeerIdentifier())) {
          model.sendAction(Action(
            declareWinConfirm: DeclareWinConfirm(
              confirmGameId: act.declareWin.gameId,
              accept: true
            )
          )).then((value) {
            Get.defaultDialog(barrierDismissible: false,title: '很遗憾', middleText: '对方获胜！', onConfirm: () {
              Get.offAll(() => const MyHomePage(title: '下棋游戏'));
            });
          });
        }
        break;
      case Action_Union.declareWinConfirm:
        Get.defaultDialog(barrierDismissible: false,title: '恭喜你', middleText: '你已获胜！', onConfirm: () {
          Get.offAll(() => const MyHomePage(title: '下棋游戏'));
        });
        break;
      case Action_Union.startGame:
        break;
      case Action_Union.startGameConfirm:
        break;
      case Action_Union.hello:
        break;
      case Action_Union.bye:
        Get.offAll(() => const MyHomePage(title: '下棋游戏'));
        Get.snackbar('对方已退出房间', '游戏关闭');
        break;
      case Action_Union.notSet:
        break;
      case Action_Union.noWin:
        if (!chess.checkWin(getPeerIdentifier()) &&
            !chess.checkWin(widget.playerIdentifier) && chess.isFull()) {
          model.sendAction(Action(
            noWinConfirm: DeclareNoWinConfirm(gameId: act.noWin.gameId)
          )).then((_) {
            Get.defaultDialog(
                barrierDismissible: false,
                title: '平局！', middleText: '平分秋色！', onConfirm: () {
              Get.offAll(() => const MyHomePage(title: '下棋游戏'));
            });
          });
        }
        break;
      case Action_Union.noWinConfirm:
        Get.defaultDialog(barrierDismissible: false,title: '平局！', middleText: '平分秋色！', onConfirm: () {
          Get.offAll(() => const MyHomePage(title: '下棋游戏'));
        });
        break;
    }
    updateChanceTip();
  }

  onTapBoard(int x, int y) {
    if (chess.isMyChance(widget.playerIdentifier)) {
      final act = Action(
          do_1: DoRequest(
              id: $fixnum.Int64(_id),
              x: x,
              y: y,
              press: true
          )
      );
      model.sendAction(act);
      _cache[_id] = act;
      _id++;
    } else {
      Get.snackbar('提示', '还不是你下棋哦~', snackPosition: SnackPosition.BOTTOM);
    }
  }

  void _checkWin() {
    final iden = widget.playerIdentifier;
    if (chess.checkWin(iden)) {
      model.sendAction(Action(
        declareWin: DeclareWin(gameId: $fixnum.Int64(0))
      ));
    } else if (!chess.checkWin(getPeerIdentifier()) && chess.isFull()) {
      // 满了，都没胜利
      Future.delayed(Duration(seconds: 1), () {
        print("平局");
        model.sendAction(Action(
            noWin: DeclareNoWin(gameId: $fixnum.Int64(0))
        ));
      });
    }
  }
}
