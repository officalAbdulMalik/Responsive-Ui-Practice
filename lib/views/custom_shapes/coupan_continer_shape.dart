import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.6896552,0);
    path_0.cubicTo(size.width*1.070542,0,size.width*1.379310,size.height*0.4741935,size.width*1.379310,size.height*1.059140);
    path_0.cubicTo(size.width*1.379310,size.height*1.644086,size.width*1.070542,size.height*2.118280,size.width*0.6896552,size.height*2.118280);
    path_0.cubicTo(size.width*0.3087685,size.height*2.118280,0,size.height*1.644086,0,size.height*1.059140);
    path_0.cubicTo(0,size.height*0.4741935,size.width*0.3087685,0,size.width*0.6896552,0);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff4d8d6e).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}