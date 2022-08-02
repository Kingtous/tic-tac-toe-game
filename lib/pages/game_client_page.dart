import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_syncer/model/base_network_model.dart';
import 'package:sms_syncer/model/client_model.dart';
import 'package:sms_syncer/model/server_model.dart';
import 'package:sms_syncer/model/util.dart';
import 'package:sms_syncer/pages/chess.dart';
import 'package:sms_syncer/proto/message.pb.dart';

class GameClientPage extends StatefulWidget {
  const GameClientPage({Key? key}) : super(key: key);

  @override
  State<GameClientPage> createState() => _GameClientPageState();
}

class _GameClientPageState extends State<GameClientPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("游戏大厅"),
      ),
      body: Container(
        child: FutureBuilder<List<BroadcastMsg>>
          (builder: (context, snapshot){
          if (snapshot.hasData) {
            return buildGameList(snapshot.data!);
          } else {
            return Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Text("正在寻找游戏，请稍等5s")
              ],
            ));
          }
        }, future: findRoomByLocal(),),
      ),
    );
  }

  Widget buildGameList(List<BroadcastMsg> list) {
    print("found ${list.length} rooms");
    return list.isEmpty ?
        Center(child: Text("没有找到游戏，请确认对方在同一局域网内"),)
        : ListView.builder(itemBuilder: (cxt, index){
      final item = list[index];
      return ListTile(
        leading: Icon(Icons.house),
        title: Text("${item.name}"),
        subtitle: Text("${item.ip}"),
        onTap: () {
          _handleConnect(item);
        },
      );
    }, itemCount: list.length,);
  }

  void _handleConnect(BroadcastMsg item) {
    Get.defaultDialog(title: '正在连接', middleText: '正在连接到${item.name}-${item.ip}');
    ClientSvc.start(item.ip).then((client){
      Get.back();
      if (client == null) {
        Get.snackbar('错误', '连接房间失败');
        return;
      }
        Get.off(() => ChessPage(model: client, playerIdentifier: 'O',));
    });
  }
}
