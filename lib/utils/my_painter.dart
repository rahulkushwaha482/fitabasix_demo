import 'dart:math';

import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    final offsetCenter = Offset(
      size.width / 2,
      size.height / 2,
    );



    final arcRect = Rect.fromCircle(
        center: size.center(Offset.zero), radius: size.shortestSide);
    canvas.drawArc(arcRect, 0, -pi, false, paint);

    final arrowPath = Path()
      ..moveTo(offsetCenter.dx - 2.5, offsetCenter.dy)
      ..lineTo(offsetCenter.dx, 80)
      ..lineTo(offsetCenter.dx + 2.5, offsetCenter.dy)
      ..close();

    canvas.drawPath(arrowPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}