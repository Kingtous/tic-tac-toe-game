import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sms_syncer/model/chess_model.dart';

class ChessBoard extends GetWidget<ChessModel> {

  final Function(int, int) onTap;

  const ChessBoard(this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      shrinkWrap: true,
      crossAxisCount: controller.x, children: chess(),
    );
  }

  List<Widget> chess() {
    List<Widget> widgets = [];
    for(var i = 0; i < controller.x ; i++) {
      for(var j = 0; j < controller.y ; j++) {
       widgets.add(GestureDetector(
         onTap: ()  {
           if (controller.chess[i][j].isEmpty) {
             onTap(i,j);
           }
         },
         child: Container(
           alignment: Alignment.center,
           decoration: BoxDecoration(
             border: Border.all(
               color: const Color(0xAA000000),
             ),
           ),
           height: 50,
           width: 50,
            child: Obx(() => Text(controller.chess[i][j], style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 50
            ),)),
         ),
       ));
      }
    }
    return widgets;
  }
}
