import 'dart:async';

import 'package:flutter/material.dart' hide Action;
import 'package:get/get.dart';
import 'package:sms_syncer/model/network_model.dart';
import 'package:sms_syncer/model/server_model.dart';
import 'package:sms_syncer/pages/chess.dart';
import 'package:sms_syncer/proto/message.pb.dart';

class GameServerPage extends StatefulWidget {
  const GameServerPage({Key? key}) : super(key: key);

  @override
  State<GameServerPage> createState() => _GameServerPageState();
}

class _GameServerPageState extends State<GameServerPage> {

  ServerModel get model => Get.find<ServerModel>();
  StreamSubscription<Action>? _sub;

  @override
  void initState() {
    super.initState();
    _sub = model.registerOnAction((action) async {
      if (action.hasHello()) {
        // 发送hello
        Get.snackbar('欢迎', "${action.hello.obs}的${action.hello.peerName}", snackPosition: SnackPosition.BOTTOM);
        final ip = await Get.find<NetworkSvc>().currentIp();
        model.sendAction(Action(
          hello: Hello(from: ip, peerName: '初出茅庐')
        )).then((value) {
          _sub?.cancel();
          _sub = null;
          Get.off(() => ChessPage(model: model, playerIdentifier: 'X'));
        });
      }
    });
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("等待加入"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text("请通知对方进入同一局域网，并点击加入游戏"),
          ],
        ),
      ),
    );
  }
}
