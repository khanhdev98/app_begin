import 'package:flutter/material.dart';
import 'package:content/content.dart';
import 'package:theme/theme.dart';

class HalokiInfoDialog extends StatelessWidget {
  final Widget icon;
  final TextSpan title;
  final TextSpan content;
  String? buttonText;
  VoidCallback? onButtonPressed;
  VoidCallback? onClosePressed;

  HalokiInfoDialog({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
    this.onClosePressed,
  }) : super(key: key);

  HalokiInfoDialog.withButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      backgroundColor: context.surfaceColor,
      insetPadding: HaloPadding.paddingHorizontal(HaloSize.paddingXL),
      title: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            HaloSpacing.small,
            RichText(text: title),
          ],
        ),
      ),
      content: Padding(
        padding: HaloPadding.paddingHorizontal(HaloSize.paddingXL),
        child: RichText(
          text: content,
          textAlign: TextAlign.center,
        ),
      ),
      actions: buttonText == null
          ? [
              TextButton(
                onPressed: onClosePressed ??
                    () {
                      Navigator.of(context).pop();
                    },
                child: Text(
                  Str.of(context).common_close,
                  style: context.bodyLarge?.medium.copyWith(fontSize: 18),
                ),
              ),
            ]
          : [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  onPressed: onButtonPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: context.greenColor,
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    buttonText!,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
    );
  }
}
