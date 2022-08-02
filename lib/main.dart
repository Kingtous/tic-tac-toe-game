import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_syncer/model/network_model.dart';
import 'package:sms_syncer/model/server_model.dart';
import 'package:sms_syncer/pages/game_client_page.dart';
import 'package:sms_syncer/pages/game_server_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(NetworkSvc());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chess Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '下棋游戏'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text("游戏菜单", style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900
            ),),
            Column(
              children: [
                TextButton(onPressed: () {
                  _handleOpenRoom();
                }, child: const Text("创建房间", style: TextStyle(
                  fontSize: 30
                ),)),
                TextButton(onPressed: () {
                  _handleJoinGame();
                }, child: const Text("加入游戏",style: TextStyle(
                    fontSize: 30
                )))
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _handleJoinGame() {
    Get.to(() => const GameClientPage());
  }


  void _handleOpenRoom() {
    var serverName = "";
    Get.defaultDialog(title: '请输入房间名', content: Container(
      child: Column(
        children: [
          TextField(onChanged: (s) {
            serverName = s;
          },)
        ],
      ),
    ),onConfirm: () {
      if (serverName.isEmpty) {
        Get.snackbar('错误', '房间名不能为空' );
        return;
      }
      Get.back();
      Get.defaultDialog(title: '正在创建房间，请稍等', content: Container(
        alignment: Alignment.center,
        child: const CircularProgressIndicator(),
      ));
      ServerModel.start(serverName).then((model) async {
        Get.back();
        if (model == null) {
          Get.snackbar('错误', '创建房间失败，请重试');
        } else {
          Get.put<ServerModel>(model);
          Get.to(() => const GameServerPage());
        }
      });
    });
  }
}
