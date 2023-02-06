import 'dart:io';

import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import '../sliding_sheet_0.5.2/src/sheet.dart';
import '../sliding_sheet_0.5.2/src/specs.dart';

class AppSnapBottomSheet {
  AppSnapBottomSheet._();

  static showSnapBottomSheet(
    BuildContext context,
    String title,
    Widget screen, {
    Widget? footer,
    bool? isCenterTitle = true,
    bool isPaddingContent = true,
    bool isPadding = true,
    SnapSpec snapSpec =
        const SnapSpec(initialSnap: 0.85, snappings: [0.85, 0.5]),
    ScrollSpec scrollSpec = const ScrollSpec(overscroll: false),
    bool isDivider = true,
  }) {
    return showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
          cornerRadius: 12,
          cornerRadiusOnFullscreen: 0,
          duration: const Duration(milliseconds: 300),
          avoidStatusBar: true,
          footerBuilder: footer != null
              ? (BuildContext context, SheetState state) => footer
              : null,
          snapSpec: snapSpec,
          scrollSpec: scrollSpec,
          builder: (context, state) {
            return Material(
              type: MaterialType.card,
              child: ListView(
                shrinkWrap: true,
                primary: false,
                padding: isPaddingContent
                    ? const EdgeInsets.fromLTRB(16, 0, 16, 16)
                    : EdgeInsets.only(bottom: Platform.isAndroid ? 0 : 16),
                children: [screen],
              ),
            );
          },
          headerBuilder: (context, state) {
            return _buildHeaderBottomSheet(context, state, title,
                isCenterTitle: isCenterTitle,
                isPadding: isPadding,
                isDivider: isDivider);
          },
        );
      },
    );
  }

  static showSnapCustomHeaderBottomSheet(
    BuildContext context,
    Widget header,
    Widget screen, {
    Widget? footer,
    bool? isCenterTitle = true,
    EdgeInsetsGeometry? paddingBody = const EdgeInsets.fromLTRB(16, 0, 16, 16),
    EdgeInsetsGeometry? paddingHeader =
        const EdgeInsets.only(left: 16, right: 16),
    SnapSpec snapSpec =
        const SnapSpec(initialSnap: 0.85, snappings: [0.85, 0.5]),
    ScrollSpec scrollSpec = const ScrollSpec(overscroll: false),
    bool isDivider = true,
    bool isDismissable = true,
  }) {
    return showSlidingBottomSheet(
      context,
      builder: (context) {
        return SlidingSheetDialog(
          cornerRadius: 12,
          isDismissable: isDismissable,
          cornerRadiusOnFullscreen: 0,
          avoidStatusBar: true,
          duration: const Duration(milliseconds: 300),
          snapSpec: snapSpec,
          scrollSpec: scrollSpec,
          footerBuilder: footer != null
              ? (BuildContext context, SheetState state) => footer
              : null,
          builder: (context, state) {
            return ListView(
              shrinkWrap: true,
              primary: false,
              padding: paddingBody,
              children: [screen],
            );
          },
          headerBuilder: (context, state) {
            return _buildCustomHeaderBottomSheet(
              context,
              state,
              header,
              padding: paddingHeader,
              isDivider: isDivider,
            );
          },
        );
      },
    );
  }

  static _buildCustomHeaderBottomSheet(
          BuildContext context, SheetState state, Widget headerView,
          {EdgeInsetsGeometry? padding =
              const EdgeInsets.only(left: 16, right: 16),
          bool isDivider = true}) =>
      Container(
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        context.colorScheme.onSurfaceVariant.withOpacity(0.32)),
              ),
            ),
            headerView,
            const SizedBox(
              height: 16,
            ),
            if (isDivider) const Divider(height: 1),
          ],
        ),
      );

  static _buildHeaderBottomSheet(
    BuildContext context,
    SheetState state,
    String title, {
    bool? isCenterTitle = true,
    bool isPadding = true,
    bool isDivider = true,
  }) =>
      Container(
        padding: isPadding
            ? const EdgeInsets.only(left: 16, right: 16)
            : EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: context.colorScheme.outline),
              ),
            ),
            title.isNotEmpty
                ? const SizedBox(
                    height: 16,
                  )
                : const SizedBox.shrink(),
            isCenterTitle == true
                ? Center(
                    child: Text(title, style: context.dialogTitle),
                  )
                : Text(title,
                    style: context.dialogTitle?.primary,
                    textAlign: TextAlign.center),
            const SizedBox(
              height: 16,
            ),
            (title.isNotEmpty && isDivider)
                ? const Divider(height: 1)
                : const SizedBox.shrink(),
          ],
        ),
      );

  static showSnapNoHeaderBottomSheet(
    BuildContext context,
    Widget screen, {
    Function(dynamic)? onCallback,
    Color? backgroundColor,
    ScrollSpec scrollSpec = const ScrollSpec(overscroll: false),
  }) =>
      showSlidingBottomSheet(
        context,
        builder: (context) {
          return SlidingSheetDialog(
            cornerRadius: 12,
            avoidStatusBar: true,
            duration: const Duration(milliseconds: 300),
            snapSpec: const SnapSpec(
              initialSnap: 0.85,
              snappings: [0.85],
            ),
            scrollSpec: scrollSpec,
            builder: (
              context,
              state,
            ) =>
                ListView(
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.only(bottom: Platform.isAndroid ? 0 : 16),
              children: [screen],
            ),
            headerBuilder: _buildPointHeaderBottomSheet,
          );
        },
      ).then((value) => onCallback?.call(value));

  static Widget _buildPointHeaderBottomSheet(
          BuildContext context, SheetState state) =>
      Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: context.colorScheme.outline.withOpacity(0.4)),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      );
}
