import 'package:get/get.dart';
import 'package:sms_syncer/proto/message.pb.dart';

class ChessModel extends GetxController {

  int x = 3;
  int y = 3;
  late RxList<RxList<String>> chess;

  String? _lastIden;

  ChessModel() {
    chess = RxList.generate(x, (index) => RxList.generate(y, (i) => ''));
  }

  bool isMyChance(String iden) {
    if (_lastIden == null) {
      return iden == 'X';
    } else {
      return _lastIden != iden;
    }
  }

  bool press(DoRequest req, String iden) {
    if (chess[req.x][req.y].isNotEmpty || !isMyChance(iden)) {
      return false;
    }
    chess[req.x][req.y] = iden;
    print("${req.x}, ${req.y} : ${iden}");
    _lastIden = iden;
    return true;
  }

  bool checkWin(String iden) {
    for (var i = 0; i< x ; i++) {
      var idenCount = 0;
      for (var j = 0; j<y ; j++) {
        idenCount += iden == chess[i][j] ? 1 : 0;
      }
      if (idenCount == y) {
        return true;
      }
    }

    for (var i = 0; i< y ; i++) {
      var idenCount = 0;
      for (var j = 0; j< x ; j++) {
        idenCount += iden == chess[j][i] ? 1 : 0;
      }
      if (idenCount == x) {
        return true;
      }
    }

    // 左上 -> 右下
    var idenCount = 0;
    for (var i = 0; i< x ; i++) {
      idenCount += iden == chess[i][i] ? 1 : 0;
    }
    if (idenCount == x) {
      return true;
    }

    // 右上 -> 左下
    idenCount = 0;
    for (var i = 0; i < x ; i++) {
      idenCount += iden == chess[i][x - i - 1] ? 1 : 0;
    }
    if (idenCount == x) {
      return true;
    }

    return false;
  }

  bool isFull() {
    for (var i = 0; i< x ; i++) {
      for (var j = 0; j< y ; j++) {
        if (chess[i][j].isEmpty){
          return false;
        }
      }
    }
    return true;
  }
}
