import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget/component/validate/domain/decimal_formatter.dart';

import '../pinned/widget.dart';
import '../snap/snap_scroll_physics.dart';

class ExpandedNewAppbarCustom extends StatefulWidget {
  final Widget appbar;
  final Widget bottom;
  final String iconPath;
  final Widget child;
  final double paddingSize;

  const ExpandedNewAppbarCustom({
    Key? key,
    this.paddingSize = 16,
    required this.iconPath,
    required this.appbar,
    required this.bottom,
    required this.child,
  }) : super(key: key);

  @override
  State createState() => _ExpandedNewAppbarCustomState();
}

class _ExpandedNewAppbarCustomState extends State<ExpandedNewAppbarCustom> {
  double minExtent = 0;
  double maxExtent = 0;

  var keyScroll = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        key: keyScroll,
        physics: () {
          if (maxExtent != 0) {
            return SnapScrollPhysics(snaps: [
              Snap.avoidZone(
                0,
                maxExtent - minExtent,
              ),
            ]);
          }
        }(),
        slivers: [
          SliverPinnedPersistentHeader(
            delegate: ExpandedAppbarCustomDelegate(
                iconPath: widget.iconPath,
                paddingSize: widget.paddingSize,
                topWidget: Column(
                  children: [
                    widget.appbar,
                  ],
                ),
                bottomWidget: widget.bottom,
                onInit: (minExtent, maxExtent) {
                  if (minExtent != this.minExtent || maxExtent != this.maxExtent) {
                    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                      keyScroll = UniqueKey();
                      setState(() {
                        this.maxExtent = maxExtent;
                        this.minExtent = minExtent;
                      });
                    });
                  }
                }),
          ),
          SliverToBoxAdapter(
            child: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - minExtent,
              ),
              child: widget.child,
            ),
          )
        ],
      ),
    );
  }
}

class ExpandedAppbarCustomDelegate extends SliverPinnedPersistentHeaderDelegate {
  late double minExtent;
  late double maxExtent;
  late double shrinkOffset;
  late double widthScreen;
  late double heightScreen;

  final double paddingSize;
  final Widget topWidget;
  final Widget bottomWidget;
  final String iconPath;
  final Function(double, double) onInit;

  ExpandedAppbarCustomDelegate({
    required this.topWidget,
    required this.bottomWidget,
    required this.onInit,
    required this.iconPath,
    this.paddingSize = 16,
  }) : super(
    minExtentProtoType: topWidget,
    maxExtentProtoType: Column(
      children: [
        topWidget,
        bottomWidget,
        SizedBox(
          height: paddingSize * 2,
        )
      ],
    ),
  );

  @override
  Widget build(context, shrinkOffset, minExtent, maxExtent, overlapsContent) {
    onInit(minExtent, maxExtent);

    MediaQuery.of(context).also((query) {
      widthScreen = query.size.width;
      heightScreen = query.size.height;
    });

    this.maxExtent = maxExtent;
    this.minExtent = minExtent;
    this.shrinkOffset = shrinkOffset;

    return Stack(
      children: [
        _buildBackground(),
        _buildMinWidget(),
        _buildMaxWidget(),
      ],
    );
  }

  Widget _buildMinWidget() {
    return Container(
      child: topWidget,
    );
  }

  Widget _buildMaxWidget() {
    var opacity = shrinkOffset / (maxExtent - minExtent);
    if (opacity > 1) {
      opacity = 1;
    }
    if (opacity < 0) {
      opacity = 0;
    }

    return Positioned(
      left: 0,
      right: 0,
      top: minExtent,
      child: Container(
        height: _bottomSizeCollapsing(),
        margin: EdgeInsets.all(
          paddingSize,
        ),
        child: Opacity(
          opacity: 1 - opacity,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: SizedBox(
              width: _widthMaxWidget(),
              child: bottomWidget,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        height: _heightBackground(),
        child: Image.asset(
          iconPath,
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
          errorBuilder: (context, error, stackTrace) {
            return Image.network(
              iconPath,
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            );
          },
        ),
      ),
    );
  }

  double _heightBackground() {
    return _bottomSizeCollapsing(false) / 2 + minExtent;
  }

  double _widthMaxWidget() {
    return widthScreen - paddingSize * 2;
  }

  double _bottomSizeCollapsing([bool padding = true]) {
    var height = 0.0;
    height += maxExtent;
    height -= minExtent;
    height -= shrinkOffset;

    if (padding) {
      height -= paddingSize * 2;
    }

    return max(height, 0);
  }

  @override
  bool shouldRebuild(oldDelegate) {
    return true;
  }
}