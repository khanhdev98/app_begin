import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class HalokiAlerSendMoneyDialog extends StatelessWidget {
  final String title;
  final String content;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const HalokiAlerSendMoneyDialog({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AlertDialog(
        contentPadding: const EdgeInsets.only(top: 16, left: 24, right: 24),
        actionsPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        actionsAlignment: MainAxisAlignment.center,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        alignment: Alignment.center,
        backgroundColor: context.surfaceColor,
        title: Text(
          title,
          style: context.dialogTitle,
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                content,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              onButtonPressed();
            },
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
