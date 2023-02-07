import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class HalokiListContentDialog extends StatelessWidget {
  final String title;
  final Widget? icon;
  final String? subTitle;
  final bool isDivider;
  final List<Widget> content;
  final String buttonRightText;
  final VoidCallback onButtonPressed;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? titlePadding;

  const HalokiListContentDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonRightText,
    required this.onButtonPressed,
    this.subTitle,
    this.isDivider = true,
    this.icon,
    this.contentPadding = const EdgeInsets.only(top: 16, left: 24, right: 24),
    this.titlePadding = const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 24),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        contentPadding: contentPadding,
        actionsPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        alignment: Alignment.center,
        titlePadding: titlePadding,
        backgroundColor: context.surfaceColor,
        scrollable: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null)
              const Padding(
                padding: EdgeInsets.only(bottom: 16, top: 8),
                child: Icon(Icons.ac_unit),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                title,
                style: context.dialogTitle,
              ),
            ),
            if (subTitle != null)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  subTitle ?? '',
                  style: context.bodyMedium?.light,
                ),
              ),
            if (isDivider)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Divider(
                  height: 1,
                  color: context.outlineColor,
                ),
              )
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              ...content,
              if (isDivider)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Divider(
                    height: 1,
                    color: context.outlineColor,
                  ),
                )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              onButtonPressed();
            },
            child: Text(
              buttonRightText,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
