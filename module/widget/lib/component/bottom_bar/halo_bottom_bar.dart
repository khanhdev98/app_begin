import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class HaloBottomBar extends StatefulWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final bool enableShadow;
  final BuildContext? screenContext;
  const HaloBottomBar({Key? key, this.child, this.padding, this.enableShadow = true, this.screenContext}) : super(key: key);

  @override
  State<HaloBottomBar> createState() => _HaloBottomBarState();
}

class _HaloBottomBarState extends State<HaloBottomBar> {
  @override
  Widget build(BuildContext context) {
    if (widget.child != null) {
      double bottomPadding = MediaQuery.of(widget.screenContext ?? context).viewPadding.bottom;
      return Container(
        padding: (widget.padding ?? EdgeInsets.zero).add(EdgeInsets.only(
            bottom: Platform.isIOS && bottomPadding > 0
                ? max(bottomPadding - 12, 0)
                : 0)),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          boxShadow: widget.enableShadow ? HaloShadow.boxShadowTop : null,
        ),
        child: widget.child,
      );
    }
    return const SizedBox.shrink();
  }
}
