import 'package:flutter/material.dart';

import '../widget/step_item.dart';

class StepModel {
  StepModel({
    this.labelStyle,
    this.icon,
    required this.label,
    required this.panel,
  });

  final Widget? icon;
  final String label;
  final TextStyle? labelStyle;
  final Widget panel;
  StepListener? listener;
}
