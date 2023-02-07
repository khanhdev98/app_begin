import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

import 'widgets/bottom_sheet_header.dart';

// ignore: must_be_immutable
class AppBottomSheet extends StatelessWidget {
  final String title;
  final Widget child;
  double initialChildSize;
  double minChildSize;
  double maxChildSize;
  bool scrollable;
  List<Widget>? actions;

  AppBottomSheet({
    Key? key,
    required this.title,
    required this.child,
    required this.initialChildSize,
    required this.minChildSize,
    required this.maxChildSize,
    this.actions,
  })  : scrollable = true,
        super(key: key);

  AppBottomSheet.noScrollable({
    Key? key,
    required this.title,
    required this.child,
    required this.initialChildSize,
    required this.minChildSize,
    required this.maxChildSize,
    this.actions,
  })  : scrollable = false,
        super(key: key);

  // scrollable = true if you want to set the height of the bottomsheet
  static Future<T?> showAppBottomSheet<T>({
    required BuildContext context,
    required String title,
    required Widget child,
    required bool scrollable,
    double initialChildSize = 0.6,
    double minChildSize = 0.5,
    double maxChildSize = 0.8,
    List<Widget>? actions,
  }) {
    return showModalBottomSheet<T>(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: scrollable
              ? AppBottomSheet(
                  title: title,
                  initialChildSize: initialChildSize,
                  minChildSize: minChildSize,
                  maxChildSize: maxChildSize,
                  actions: actions,
                  child: child,
                )
              : AppBottomSheet.noScrollable(
                  title: title,
                  initialChildSize: initialChildSize,
                  minChildSize: minChildSize,
                  maxChildSize: maxChildSize,
                  actions: actions,
                  child: child,
                ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return scrollable
        ? GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Navigator.of(context).pop(),
            child: DraggableScrollableSheet(
              initialChildSize: initialChildSize,
              minChildSize: minChildSize,
              maxChildSize: maxChildSize,
              builder: (_, controller) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(HaloSize.cardRadius),
                      topLeft: Radius.circular(HaloSize.cardRadius),
                    ),
                    color: context.surfaceColor,
                  ),
                  child: SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BottomSheetHeader(title: title),
                        Expanded(
                          child: ListView(
                            controller: controller,
                            children: [child],
                          ),
                        ),
                        if (actions != null && actions!.isNotEmpty)
                          Padding(
                            padding: HaloPadding.all,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [...actions!],
                            ),
                          )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(HaloSize.cardRadius),
                topLeft: Radius.circular(HaloSize.cardRadius),
              ),
              color: context.surfaceColor,
            ),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BottomSheetHeader(title: title),
                  child,
                  if (actions != null && actions!.isNotEmpty)
                    Padding(
                      padding: HaloPadding.noTop,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [...actions!],
                      ),
                    ),
                ],
              ),
            ),
          );
  }
}
