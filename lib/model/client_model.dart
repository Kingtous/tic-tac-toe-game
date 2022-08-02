import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:sms_syncer/model/base_network_model.dart';
import 'package:sms_syncer/model/network_model.dart';
import 'package:sms_syncer/model/util.dart';
import 'package:sms_syncer/proto/message.pb.dart';

class ClientSvc extends BaseNetworkModel {

  final Socket? _socket;
  Stream<Uint8List>? socketMultiStream;
  StreamSubscription<Uint8List>? _subs;

  ClientSvc._(this._socket);


  static Future<ClientSvc?> start(String ip) async {
    try {
      var socket = await Socket.connect(ip, listenPort, timeout: const Duration(seconds: 5));
      final socketMultiStream = socket.asBroadcastStream();
      if (await handshake(socket, socketMultiStream) == null) {
        return null;
      }
      return ClientSvc._(socket)
        ..socketMultiStream = socketMultiStream
        ..listen();
    } catch (e) {
      Get.defaultDialog(title: '连接失败', middleText: e.toString());
      return null;
    }
  }

  void listen() {
    _subs = socketMultiStream?.listen((event) {
      onData(event);
    });
  }

  @override
  void dispose() {
    _subs?.cancel();
    _socket?.close();
    super.dispose();
    Future.delayed(Duration.zero, () {
      Get.delete<ClientSvc>();
    });
  }

  static Future<Socket?> handshake(Socket socket, Stream<Uint8List> onData) async {
      StreamSubscription? subs;
      try {
        final ip = await Get.find<NetworkSvc>().currentIp();
        final act = Action(
            hello: Hello(from: ip , peerName: '初出茅庐')
        );
        await BaseNetworkModel.send(socket, act);
        final completer = Completer<Socket?>();
        final timer = Timer(const Duration(seconds: 5), () {
          completer.complete(null);
        });
        subs = onData.listen((event) {
          subs?.cancel();
          timer.cancel();
          try {
            final act = Action.fromBuffer(event);
            if (act.hasHello()) {
              completer.complete(socket);
            }
          } catch (e) {
            completer.complete(null);
          }
        }, cancelOnError: true);
        return completer.future;
      } catch(e) {
        return null;
      }
  }

  @override
  Future<void> sendAction(Action action) async {
    if (_socket != null) {
      BaseNetworkModel.send(_socket!, action);
    }
  }

}