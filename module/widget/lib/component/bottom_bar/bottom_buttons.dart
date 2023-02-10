import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class BottomButtons extends StatelessWidget {
  final String? okButtonText;
  final String? cancelButtonText;
  final bool showCancel;
  final Function()? onCancelPressed;
  final Function()? onOkPressed;
  const BottomButtons({Key? key, required this.onOkPressed, this.onCancelPressed, this.okButtonText, this.cancelButtonText, this.showCancel = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: context.surfaceColor,),
      padding: EdgeInsets.symmetric(horizontal: showCancel ? 16 : 32, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: showCancel,
            child: Expanded(
              flex: 1,
              child: OutlinedButton(
                onPressed: onCancelPressed,
                child:
                    Text(cancelButtonText ?? "cancel"),
              ),
            ),
          ),
          SizedBox(
            width: showCancel ? 16 : 0,
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: onOkPressed,
              child: Text(okButtonText ?? "Ok"),
            ),
          ),
        ],
      ),
    );
  }
}