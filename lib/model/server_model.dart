import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:sms_syncer/model/base_network_model.dart';
import 'package:sms_syncer/model/network_model.dart';
import 'package:sms_syncer/model/util.dart';
import 'package:sms_syncer/proto/message.pb.dart';

class ServerModel extends BaseNetworkModel{
  
  ServerSocket? _socket;
  ServerModel._(this._socket);

  Socket? _peerSocket;
  StreamSubscription<Socket>? _discoverSubs;

  bool stopDiscover = false;

  static Future<ServerModel?> start(String serverName) async {
    try {
      final socket = await ServerSocket.bind(await Get.find<NetworkSvc>().currentIp(), listenPort);
      return ServerModel._(socket).._listen().._broadcast(serverName);
    } catch (e) {
      Get.defaultDialog(title: 'Error', middleText: e.toString()); 
      return null;
    }
  }

  void _listen() async {
    try {
      if (_socket == null) {
        return;
      }
      _discoverSubs = _socket?.listen((event) {
        _discoverSubs?.cancel();
        _accept(event);
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _broadcast(String serverName) async {
    final socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, broadcastPort);
    socket.broadcastEnabled = true;
    while (true) {
      if (_socket == null || stopDiscover) {
        break;
      }
      String broadIp = await Get.find<NetworkSvc>().getBroadcast();
      if (broadIp.startsWith('/')) {
        broadIp = broadIp.substring(1);
      }
      String ip = await Get.find<NetworkSvc>().currentIp();
      if (broadIp.isEmpty || ip.isEmpty) {
        print("ip empty, next 1s continue");
        await Future.delayed(const Duration(seconds: 3));
      } else {
        // send a broadcast msg
        final msg = BroadcastMsg(ip: ip, name: serverName);
        print("send broadcast to ${broadIp}:${broadcastPort} with ${serverName}");
        final buf = msg.writeToBuffer();
        int sz = socket.send(buf, InternetAddress(broadIp), broadcastPort);
        debugPrint("write size $sz/${buf.length}");
        await Future.delayed(const Duration(seconds: 1));
      }
    }
    socket.close();
  }

  void _accept(Socket socket) {
    _peerSocket = socket;
    socket.listen((data) {
      onData(data);
    }, onError: (err) {
      print(err.toString());
      try {
        socket.close();
      } catch (e) {
        print(e.toString());
      } finally {
        _peerSocket = null;
      }
    });
  }

  @override
  void dispose() {
    try {
      stopBroadcast();
      _socket?.close();
    } catch (e) {
      // ignore
    }
    _socket = null;
    super.dispose();
    Future.delayed(Duration.zero, () {
      Get.delete<ServerModel>();
    });
  }

  void stopBroadcast() {
    stopDiscover = true;
  }

  @override
  Future<void> sendAction(Action action) async {
    if (_peerSocket != null) {
      BaseNetworkModel.send(_peerSocket!, action);
    }
  }
}