import 'package:flutter/material.dart';

import 'package:widget/component/showcaseview-1.1.8/lib/showcaseview.dart';

class HaloShowCase {
  HaloShowCase._();

  static startShowCase(
    BuildContext context,
    List<GlobalKey> globalKeys,
  ) {
    ShowCaseWidget.of(context).startShowCase([...globalKeys]);
  }

  static ShowCaseWidget showCaseWidget(Widget child) {
    return ShowCaseWidget(
      builder: Builder(builder: (context) => child),
    );
  }
  static ShowCaseWidget showCase() => ShowCaseWidget as ShowCaseWidget;

}
