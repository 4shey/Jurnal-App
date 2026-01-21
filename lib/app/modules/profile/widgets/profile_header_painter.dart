import 'package:flutter/material.dart';
import 'package:jurnal_app/app/core/constant/app_colors.dart';

class ProfileHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = appWhite;
    path = Path();
    path.lineTo(size.width, size.height * 0.78);
    path.cubicTo(
      size.width,
      size.height * 0.78,
      size.width * 0.67,
      size.height * 1.23,
      size.width * 0.47,
      size.height * 0.84,
    );
    path.cubicTo(
      size.width * 0.27,
      size.height * 0.46,
      0,
      size.height * 0.78,
      0,
      size.height * 0.78,
    );
    path.cubicTo(0, size.height * 0.78, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(
      size.width,
      0,
      size.width,
      size.height * 0.78,
      size.width,
      size.height * 0.78,
    );
    path.cubicTo(
      size.width,
      size.height * 0.78,
      size.width,
      size.height * 0.78,
      size.width,
      size.height * 0.78,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
