import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class ExpansionRadio extends StatefulWidget {
  ExpansionRadio({
    Key? key,
    required this.title,
    this.currentSelected = false,
    this.onChecked,
    required this.children,
    this.isEnable = true,
  }) : super(key: key);

  bool currentSelected;
  final bool isEnable;
  final String title;
  final Function(bool)? onChecked;
  final List<Widget> children;

  @override
  createState() => _ExpansionRadioState();
}

class _ExpansionRadioState extends State<ExpansionRadio> {
  bool get isEnableClick => widget.onChecked != null;
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        collapsedIconColor: Colors.transparent,
        iconColor: Colors.transparent,
        tilePadding: EdgeInsets.zero,
        textColor: context.colorScheme.shadow,
        onExpansionChanged: (isExpand) {
          setState(() {
            this.isExpand = isExpand;
            widget.onChecked?.call(isExpand);
          });
        },
        title: Row(
          children: [
            if (isExpand && widget.isEnable)
              _enableRadio()
            else
              _disableRadio(),
            const SizedBox(
              width: 16,
            ),
            Text(widget.title),
          ],
        ),
        children: widget.isEnable ? widget.children : [Container()],
      ),
    );
  }

  _disableRadio() => SizedBox(
        width: 20,
        height: 20,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(
            PathIcons.icRadioUnchecked,
          ),
        ),
      );

  _enableRadio() => SizedBox(
        width: 20,
        height: 20,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset(
            PathIcons.icRadioChecked,
          ),
        ),
      );
}
