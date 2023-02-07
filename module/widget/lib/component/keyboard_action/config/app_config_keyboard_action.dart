import 'package:content/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import '../keyboard_actions.dart';
import '../keyboard_actions_config.dart';

KeyboardActionsConfig keyboardActionsConfig(BuildContext context, List<FocusNode> focusNode,
    {bool displayArrows = true}) {
  return KeyboardActionsConfig(
    keyboardActionsPlatform: KeyboardActionsPlatform.ios,
    nextFocus: true,
    actions: List.generate(
      focusNode.length,
      (index) => KeyboardActionsItem(
        displayArrows: displayArrows,
        focusNode: focusNode[index],
        toolbarButtons: [
          (node) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Padding(
                padding: EdgeInsets.only(right: HaloSize.paddingXL),
                child: Text(
                  Str.of(context).common_done,
                  style: context.labelLarge?.primary,
                ),
              ),
            );
          }
        ],
      ),
    ),
  );
}
