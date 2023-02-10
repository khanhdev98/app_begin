import 'dart:io';
import 'dart:math';
import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import '../tooltip_widget/halo_tooltip_widget.dart';

const double DEFAULT_INDICATOR_HEIGHT = 1.5;

/// base on https://pub.dev/packages/titled_navigation_bar
// ignore: must_be_immutable
class HaloBottomNavigationBar extends StatefulWidget {
  final Curve curve;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? inactiveStripColor;
  final Color? indicatorColor;
  final bool enableShadow;
  int currentIndex;

  /// Called when a item is tapped.
  ///
  /// This provide the selected item's index.
  final ValueChanged<int> onTap;

  /// The items of this navigation bar.
  ///
  /// This should contain at least two items and five at most.
  final List<HaloNavigationBarItem> items;

  /// The selected item is indicator height.
  ///
  /// Defaults to [DEFAULT_INDICATOR_HEIGHT].
  final double indicatorHeight;

  /// Change the navigation bar's size.
  final double? height;

  HaloBottomNavigationBar({
    Key? key,
    this.curve = Curves.linear,
    required this.onTap,
    required this.items,
    this.activeColor,
    this.inactiveColor,
    this.inactiveStripColor,
    this.indicatorColor,
    this.enableShadow = true,
    this.currentIndex = 0,
    this.height,
    this.indicatorHeight = DEFAULT_INDICATOR_HEIGHT,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  @override
  State createState() => _HaloBottomNavigationBarState();
}

class _HaloBottomNavigationBarState extends State<HaloBottomNavigationBar> {
  Curve get curve => widget.curve;

  List<HaloNavigationBarItem> get items => widget.items;

  double width = 0;
  Color? activeColor;
  Duration duration = const Duration(milliseconds: 270);

  double _getIndicatorPosition(int index) {
    var isLtr = Directionality.of(context) == TextDirection.ltr;
    if (isLtr) {
      return lerpDouble(-1.0, 1.0, index / (items.length - 1))!;
    } else {
      return lerpDouble(1.0, -1.0, index / (items.length - 1))!;
    }
  }

  double _getDefaultHeight() {
    return 48 + (widget.items.first.title != null ? 20 : 0);
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    activeColor = widget.activeColor ?? Theme.of(context).indicatorColor;
    double bottomPadding =
        Platform.isIOS && MediaQuery.of(context).viewPadding.bottom > 0
            ? max(MediaQuery.of(context).viewPadding.bottom - 12, 0)
            : 0;
    return Container(
      padding: EdgeInsets.only(bottom: bottomPadding),
      height: widget.height ?? _getDefaultHeight() + bottomPadding,
      width: width,
      decoration: BoxDecoration(
        color: widget.inactiveStripColor ?? Theme.of(context).cardColor,
        boxShadow: widget.enableShadow ? HaloShadow.boxShadowTop : null,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            // top: widget.indicatorHeight,
            child: Material(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: items.map((item) {
                  var index = items.indexOf(item);
                  return InkWell(
                    onTap: () => _select(index),
                    child: _buildItemWidget(item, index == widget.currentIndex),
                  );
                }).toList(),
              ),
            ),
          ),

          ///Indicator
          Positioned(
            top: 0,
            width: width,
            child: AnimatedAlign(
              alignment:
                  Alignment(_getIndicatorPosition(widget.currentIndex), 0),
              curve: curve,
              duration: duration,
              child: Container(
                color: widget.indicatorColor ?? activeColor,
                width: width / items.length,
                height: widget.indicatorHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _select(int index) {
    widget.currentIndex = index;
    widget.onTap(widget.currentIndex);

    setState(() {});
  }

  Widget _buildItemWidget(HaloNavigationBarItem item, bool isSelected) {
    String? tooltipMessage = item.tooltip ?? item.title;
    Widget child = Container(
      color: item.backgroundColor,
      height: widget.height ?? _getDefaultHeight(),
      width: width / items.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          item.icon,
          if (item.title != null)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                item.title!,
                style: context.labelMedium,
              ),
            )
        ],
      ),
    );
    if (tooltipMessage != null) {
      child = Tooltip(message: tooltipMessage, child: child);
    }
    if (item._type == HaloNavigationBarItemType.showcase) {
      return HaloShowcaseWidget(
        globalKey: item._key!,
        description: item._showcaseDescription ?? '',
        titleAction: item._actionText,
        child: child,
      );
    }
    return child;
  }
}

enum HaloNavigationBarItemType { normal, showcase }

class HaloNavigationBarItem {
  /// The title of this item.
  final String? title;

  /// The icon of this item.
  ///
  /// If this is not a [Icon] widget, you must handle the color manually.
  final Widget icon;

  /// The background color of this item.
  ///
  /// Defaults to [Colors.transparent].
  final Color backgroundColor;

  /// The tooltip help user know the name of button
  ///
  /// The tooltip message show when long-pressed on item.
  final String? tooltip;

  /// Type of item
  final HaloNavigationBarItemType _type;

  ///[HaloNavigationBarItemType.showcase] params
  /// Showcase key
  final GlobalKey? _key;

  /// Showcase content
  final String? _showcaseDescription;

  /// Showcase button text
  final String? _actionText;

  HaloNavigationBarItem({
    required this.icon,
    this.title,
    this.tooltip,
    this.backgroundColor = Colors.transparent,
  })  : _type = HaloNavigationBarItemType.normal,
        _key = null,
        _showcaseDescription = null,
        _actionText = null;

  HaloNavigationBarItem.showcase({
    required this.icon,
    this.title,
    this.tooltip,
    this.backgroundColor = Colors.transparent,
    required GlobalKey showcaseKey,
    String? showcaseDescription,
    String? actionText,
  })  : _type = HaloNavigationBarItemType.showcase,
        _key = showcaseKey,
        _showcaseDescription = showcaseDescription,
        _actionText = actionText;
}
