import 'dart:io';
import 'package:flutter/material.dart';
import 'package:theme/material3/icons/app_icon.dart';
import 'package:theme/material3/m3_theme_lib.dart';

// ignore: must_be_immutable
class PageScaffoldTabBarScrollView extends StatelessWidget {
  PageScaffoldTabBarScrollView({
    Key? key,
    this.isCenterTitle = false,
    this.iconData,
    this.action,
    this.subTitle,
    required this.titleString,
    required this.onLeadingAction,
    required this.tabBar,
    required this.tabViews,
    this.snap,
    this.isRefresh,
    this.appbarColor,
    this.initialIndex,
  }) : super(key: key) {
    if (iconData is String) {
      _iconLeading = Image.asset(iconData as String);
    } else if (iconData is IconData) {
      _iconLeading = Icon(iconData as IconData);
    }
    else {
      _iconLeading = null;
    }
  }

  final bool? isRefresh;
  final bool? snap;
  final TabBar tabBar;
  final int? initialIndex;
  final List<Widget> tabViews;
  final String? titleString;
  final String? subTitle;
  final bool? isCenterTitle;
  final Object? iconData;
  final VoidCallback onLeadingAction;
  final Widget? action;
  late Widget? _iconLeading;
  final Color? appbarColor;

  @override
  Widget build(BuildContext context) {
    return body(context);
  }

  Widget body(BuildContext context) =>
      DefaultTabController(
        length: tabViews.length,
        initialIndex: initialIndex ?? 0,
        child: SafeArea(
          bottom: Platform.isAndroid,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) =>
              <Widget>[
                SliverAppBar(
                  elevation: 3,
                  shadowColor: Colors.black.withOpacity(0.2),
                  expandedHeight: AppBar().preferredSize.height,
                  centerTitle: isCenterTitle ?? false,
                  title: Text(titleString ?? '', style: context.appBarTitle),
                  actions: action != null ? <Widget>[action!] : null,
                  floating: true,
                  snap: true,
                  forceElevated: true,
                  backgroundColor: appbarColor ?? context.colorScheme.surface,
                  leading: IconButton(
                    onPressed: onLeadingAction,
                    icon: _iconLeading ?? AppIcons.back,
                    // icon: _iconLeading ?? Image.asset(PathIcons.icCarBack, color: context.onSurfaceColor,),
                  ),
                  systemOverlayStyle:
                  getSystemOverlay(Theme.of(context).brightness == Brightness.dark),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                      tabBar
                  ),
                  pinned: true,
                ),
              ],
              floatHeaderSlivers: true,
              body: TabBarView(
                children: [...tabViews],
              ),
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ),
      );

}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 8)],
          color: context.colorScheme.surface,
        ),
        child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

