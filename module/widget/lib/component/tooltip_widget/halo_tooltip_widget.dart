import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../showcaseview-1.1.8/lib/showcaseview.dart';
import 'halo_tooltip_shape_painter.dart';

///ShowCaseType.normal : only description and title , can't custom content inside widget and don't have action
///ShowCaseType.withAction : custom content inside widget and have action
enum ShowCaseType { normal, custom }

class HaloShowcaseWidget extends StatelessWidget {
  static const PREFERENCES_IS_FIRST_LAUNCH_STRING = "PREFERENCES_IS_FIRST_LAUNCH_STRING";
  static const PREFERENCES_IS_FIRST_LAUNCH_STRING_AFF = "PREFERENCES_IS_FIRST_LAUNCH_STRING_AFF";

  final Widget child;
  final String description;
  final GlobalKey globalKey;
  final bool isAction;
  final Widget? container;
  final VoidCallback? onClickAction;
  final String? titleAction;
  final bool disableAnimation;
  final ShowCaseType showCaseType;
  final BorderRadius? radius;
  final TextStyle? titleTextStyle;
  final TextStyle? descTextStyle;
  final EdgeInsets contentPadding;
  final String? title;
  final ShapeBorder? shapeBorder;
  final Color overlayColor;
  final double overlayOpacity;
  final Color showcaseBackgroundColor;
  final Color textColor;
  final bool showArrow;
  final double? height;
  final double? width;
  final Duration animationDuration;
  final VoidCallback? onToolTipClick;
  final VoidCallback? onTargetClick;
  final bool? disposeOnTap;
  final EdgeInsets overlayPadding;
  final bool isTour;
  const HaloShowcaseWidget({
    Key? key,
    required this.description,
    required this.child,
    required this.globalKey,
    this.isAction = false,
    this.container,
    this.onClickAction,
    this.titleAction,
    this.disableAnimation = true,
    this.showCaseType = ShowCaseType.normal,
    this.radius,
    this.titleTextStyle,
    this.descTextStyle,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.title,
    this.shapeBorder,
    this.overlayColor = Colors.black45,
    this.overlayOpacity = 0.5,
    this.showcaseBackgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.showArrow = true,
    this.height,
    this.width,
    this.animationDuration = const Duration(milliseconds: 2000),
    this.onToolTipClick,
    this.onTargetClick,
    this.disposeOnTap,
    this.overlayPadding = EdgeInsets.zero,  this.isTour = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => showCaseType == ShowCaseType.normal
      ? Showcase(
          key: globalKey,
          isTour: isTour,
          showcaseBackgroundColor: showcaseBackgroundColor,
          contentPadding: contentPadding,
          showArrow: showArrow,
          disableAnimation: disableAnimation,
          title: title,
          titleTextStyle: titleTextStyle,
          description: description,
          descTextStyle: descTextStyle,
          overlayColor: overlayColor,
          shapeBorder: shapeBorder,
          overlayOpacity: overlayOpacity,
          animationDuration: animationDuration,
          disposeOnTap: disposeOnTap,
          child: child,
          onTargetClick: onTargetClick,
        )
      : Showcase.withWidget(
          key: globalKey,
          height: 50,
          width: 140,
          disableAnimation: disableAnimation,
          shapeBorder: shapeBorder,
          radius: radius,
          overlayOpacity: overlayOpacity,
          overlayPadding: overlayPadding,
          container: container ??
              Container(
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                    shape: const HaloTooltipShapePainter(
                        arrowArc: 0.1, arrowHeight: 6, arrowWidth: 14, radius: 10),
                    color: showcaseBackgroundColor),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      description,
                      style: descTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        onClickAction != null ? onClickAction?.call() : ShowCaseWidget.of(context).next();
                      },
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                      child: Text(
                        titleAction ?? "Tiếp tục",
                        style: context.bodyMedium?.primary,
                      ),
                    ),
                  ],
                ),
              ),
          child: child);

  static Future<bool> isFirstLaunch([String? key]) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    bool isFirstLaunch = sharedPreferences.getBool(key ?? PREFERENCES_IS_FIRST_LAUNCH_STRING) ?? true;

    if (isFirstLaunch) {
      sharedPreferences.setBool(key ?? PREFERENCES_IS_FIRST_LAUNCH_STRING, false);
    }
    return isFirstLaunch;
  }
}
