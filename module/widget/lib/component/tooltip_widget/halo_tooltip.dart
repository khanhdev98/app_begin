import 'dart:core';
import 'package:flutter/material.dart';
import 'halo_tooltip_shape.dart';

class HaloTooltip extends StatelessWidget {
  bool isTop;
  double? position;
  Color? color;
  Widget? child;
  TextSpan? richMessage;
  TooltipTriggerMode? triggerMode;
  Duration? showDuration;
  bool? preferBelow;
  String? message;
  double? verticalOffset;
  double? height;
  TextStyle? textStyle;
  EdgeInsetsGeometry? margin;
  EdgeInsetsGeometry? padding;
  Duration? waitDuration;
  bool? enableFeedback;
  bool? excludeFromSemantics;

  HaloTooltip(
      {Key? key,
      this.isTop = true,
      this.position,
      this.message,
      this.triggerMode,
      this.richMessage,
      this.preferBelow,
      this.showDuration,
      this.waitDuration,
      this.color,
      this.child,
      this.enableFeedback,
      this.margin,
      this.textStyle,
      this.height,
      this.excludeFromSemantics,
      this.padding,
      this.verticalOffset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      excludeFromSemantics: excludeFromSemantics,
      triggerMode: triggerMode,
      enableFeedback: enableFeedback,
      showDuration: showDuration,
      preferBelow: preferBelow,
      decoration: ShapeDecoration(
          shape: HaloTooltipShape(isTop: isTop, position: position ?? 0),
          color: color),
      message: message,
      verticalOffset: verticalOffset,
      height: height,
      textStyle: textStyle,
      margin: margin,
      padding: padding,
      waitDuration: waitDuration,
      richMessage: richMessage,
      child: child,
    );
  }
}
