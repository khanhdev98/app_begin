import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class HalokiPromptDialog extends StatelessWidget {
  final String title;
  final String content;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onConfirmButtonPressed;
  final VoidCallback onCancelButtonPressed;

  const HalokiPromptDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.confirmButtonText,
    required this.cancelButtonText,
    required this.onConfirmButtonPressed,
    required this.onCancelButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        backgroundColor: context.surfaceColor,
        insetPadding: HaloPadding.paddingHorizontal(HaloSize.paddingXL),
        title: Text(
          title,
          style: context.dialogTitle?.copyWith(fontSize: 22),
        ),
        content: Text(
          content,
          style: context.dialogMessage,
        ),
        actions: [
          TextButton(
            onPressed: onCancelButtonPressed,
            child: Text(
              cancelButtonText,
              style: context.dialogAction?.body.medium.copyWith(fontSize: 18),
            ),
          ),
          TextButton(
            onPressed: onConfirmButtonPressed,
            child: Text(
              confirmButtonText,
              style: context.dialogAction?.red.medium.copyWith(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
