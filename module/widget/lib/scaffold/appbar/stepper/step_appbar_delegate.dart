part of 'stepper_appbar_custom.dart';

class StepAppbarCustomDelegate extends SliverPinnedPersistentHeaderDelegate {
  final Widget child;
  final Color? background;
  final ScrollController controller;

  StepAppbarCustomDelegate({
    required this.child,
    required this.controller,
    this.background,
  }) : super(
          minExtentProtoType: child,
          maxExtentProtoType: child,
        );

  @override
  Widget build(context, shrinkOffset, minExtent, maxExtent, overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: background ?? Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        child: child,
      ),
    );
  }

  @override
  bool shouldRebuild(StepAppbarCustomDelegate oldDelegate) {
    return true;
  }
}
