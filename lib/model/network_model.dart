import 'package:get/get.dart';
import 'package:network_info_plus/network_info_plus.dart';

class NetworkSvc extends GetxService {

  final info = NetworkInfo();

  Future<String> currentIp() async {
    return await info.getWifiIP() ?? "";
  }

  Future<String> getBroadcast() async {
    return await info.getWifiBroadcast() ?? "";
  }
}
