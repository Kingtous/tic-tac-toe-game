import 'dart:async';
import 'dart:io';

import 'package:sms_syncer/proto/message.pb.dart';

int listenPort = 2345;
int broadcastPort = 2346;

/// 5s
Future<List<BroadcastMsg>> findRoomByLocal() async {
  var bm = List<BroadcastMsg>.empty(growable: true);
  final socket = await RawDatagramSocket.bind(InternetAddress.anyIPv4, broadcastPort);
  socket.broadcastEnabled = true;
  socket.listen((RawSocketEvent event) {
    print("收到udp: $event");
    final datagram = socket.receive();
    if (datagram == null) {
      return;
    }
    try {
      final data = BroadcastMsg.fromBuffer(datagram.data);
      if (bm.where((e) => e.ip == data.ip).isNotEmpty) {
        // ignore
      } else {
        bm.add(data);
      }
    } catch (e) {
      // ignore
      print(e);
    }
  });
  await Future.delayed(const Duration(seconds: 5));
  socket.close();
  return bm;
}