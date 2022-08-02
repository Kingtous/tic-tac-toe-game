import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:sms_syncer/proto/message.pb.dart';

abstract class BaseNetworkModel extends GetxController{
  
  final StreamController<Action> controller = StreamController();
  
  Stream<Action>? stream;
  
  static Future<void> send(Socket socket, Action action) async {
    if (kDebugMode) {
      print("发送 ${action.toDebugString()}");
    }
    socket.add(action.writeToBuffer());
    await socket.flush();
  }
  
  StreamSubscription<Action> registerOnAction(Function(Action) onAction) {
    stream ??= controller.stream.asBroadcastStream();
    return stream!.listen((event) {
      onAction(event);
    });
  }

  onData(Uint8List data) {
    try {
      final act = Action.fromBuffer(data);
      debugPrint("收到 ${act.toDebugString()}");
      controller.add(act);
    } catch (e) {
      print(e.toString());
    }
  }
  
  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  Future<void> sendAction(Action action);
}