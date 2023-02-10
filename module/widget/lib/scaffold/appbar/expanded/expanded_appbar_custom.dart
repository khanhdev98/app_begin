import 'dart:math';

import 'package:flutter/material.dart';

import '../pinned/widget.dart';

class ExpandedAppbarCustom extends StatelessWidget {
  final Widget minAppbar;
  final Widget maxAppBar;
  final List<Widget> sliver;

  const ExpandedAppbarCustom({
    Key? key,
    required this.minAppbar,
    required this.maxAppBar,
    required this.sliver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverPinnedPersistentHeader(
            delegate: ExpandedAppbarCustomDelegate(
              minExtentProtoType: Column(
                children: [
                  minAppbar,
                  const SizedBox(
                    height: 8,
                  )
                ],
              ),
              maxExtentProtoType: maxAppBar,
            ),
          ),
        ],
        body: Column(
          children: [
            ...sliver,
          ],
        ),
      ),
    );
  }
}

class ExpandedAppbarCustomDelegate extends SliverPinnedPersistentHeaderDelegate {
  ExpandedAppbarCustomDelegate({
    required Widget minExtentProtoType,
    required Widget maxExtentProtoType,
  }) : super(
          maxExtentProtoType: maxExtentProtoType,
          minExtentProtoType: minExtentProtoType,
        );

  @override
  Widget build(BuildContext context, double shrinkOffset, double? minExtent, double maxExtent,
      bool overlapsContent) {
    double per = min(1, shrinkOffset / (maxExtent - (minExtent ?? 0)));

    return Stack(
      children: [
        Opacity(
          opacity: per,
          child: minExtentProtoType,
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Opacity(
            opacity: 1 - per,
            child: maxExtentProtoType,
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPinnedPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
