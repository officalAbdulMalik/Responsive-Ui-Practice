import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.5869507,size.height*-0.01396621);
    path_0.cubicTo(size.width*0.6840799,size.height*0.04366372,size.width*0.7540885,size.height*0.1384925,size.width*0.7528249,size.height*0.2291290);
    path_0.cubicTo(size.width*0.7521942,size.height*0.3197711,size.width*0.6796629,size.height*0.4067353,size.width*0.6001932,size.height*0.4606984);
    path_0.cubicTo(size.width*0.5200929,size.height*0.5151859,size.width*0.4330554,size.height*0.5366656,size.width*0.3516937,size.height*0.5544786);
    path_0.cubicTo(size.width*0.2697050,size.height*0.5722893,size.width*0.1933886,size.height*0.5869609,size.width*0.1233799,size.height*0.5722893);
    path_0.cubicTo(size.width*0.05337127,size.height*0.5576177,size.width*-0.009700189,size.height*0.5130831,size.width*-0.03682074,size.height*0.4591244);
    path_0.cubicTo(size.width*-0.06331063,size.height*0.4051613,size.width*-0.05321896,size.height*0.3407198,size.width*-0.05448027,size.height*0.2626577);
    path_0.cubicTo(size.width*-0.05511092,size.height*0.1851231,size.width*-0.06646391,size.height*0.09343356,size.width*-0.01916002,size.height*0.02846895);
    path_0.cubicTo(size.width*0.02814388,size.height*-0.03649566,size.width*0.1347329,size.height*-0.07473974,size.width*0.2501523,size.height*-0.08364399);
    path_0.cubicTo(size.width*0.3655717,size.height*-0.09254824,size.width*0.4898215,size.height*-0.07159615,size.width*0.5869507,size.height*-0.01396621);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff4D8D6E).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}