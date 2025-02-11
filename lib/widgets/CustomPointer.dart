import 'package:flutter/material.dart';

class CustomPointer extends StatelessWidget {
  final double size;
  final Color color;

  const CustomPointer({Key? key, this.size = 50, this.color = Colors.green})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size * 0.8),
      painter: _TrianglePointerPainter(color),
    );
  }
}

class _TrianglePointerPainter extends CustomPainter {
  final Color color;

  _TrianglePointerPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color // Customizable color
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width / 2, 0); // Top point
    path.lineTo(0, size.height); // Bottom-left
    path.lineTo(size.width, size.height); // Bottom-right
    path.close(); // Closes the path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
