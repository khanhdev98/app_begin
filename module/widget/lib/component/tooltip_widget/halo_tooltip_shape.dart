import 'package:flutter/material.dart';

class HaloTooltipShape extends ShapeBorder {
  final bool isTop;
  final double arrowWidth;
  final double arrowHeight;
  final double arrowArc;
  final double radius;
  final double position;

  ///position có thể là số âm vì mũi tên đi theo trục x

  const HaloTooltipShape({
    required this.isTop,
    this.radius = 10.0,
    this.arrowWidth = 14,
    this.arrowHeight = 6,
    this.arrowArc = 0.0,
    this.position = 2.0,
  }) : assert(arrowArc <= 1.0 && arrowArc >= 0.0);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: arrowHeight);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(
        rect.topLeft, rect.bottomRight - Offset(0, arrowHeight));
    double x = arrowWidth, y = arrowHeight, r = 1 - arrowArc;

    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)))
      ..moveTo(
          isTop == true
              ? rect.bottomCenter.dx + x * (position)
              : rect.bottomCenter.dx + x * (position),
          isTop == true ? rect.bottomCenter.dy : 0)
      .. relativeLineTo(isTop == true ? -x / 2 * r : x / 2 * r, isTop == true ? y * r : -y * r)
      ..relativeQuadraticBezierTo(-x / 2 * (1 - r), y * (1 - r), -x * (1 - r), 0)
      ..relativeLineTo(isTop == true ? -x / 2 * r : x / 2 * r, isTop == true ? -y * r : y * r);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
