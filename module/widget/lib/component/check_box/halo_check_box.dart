import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

class HaloCheckBox extends StatefulWidget {
  final bool selected;
  final String title;
  final double round;
  final EdgeInsets? margin;
  final double scale;
  final Function(bool value)? onChange;

  const HaloCheckBox({
    Key? key,
    this.selected = true,
    required this.title,
    this.round = 2.0,
    this.scale = 1,
    this.onChange,
    this.margin,
  }) : super(key: key);

  @override
  _HaloCheckBoxState createState() => _HaloCheckBoxState();
}

class _HaloCheckBoxState extends State<HaloCheckBox> {
  bool _selected = true;
  late ThemeData theme;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context);
    return InkWell(
      onTap: () {
        _selected = !_selected;
        widget.onChange?.call(_selected);
        setState(() {});
      },
      child: Row(
        children: [
          Transform.scale(
            scale: widget.scale,
            child: SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: _selected,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.round),
                ),
                onChanged: (bool? value) {},
                splashRadius: 100,
              ),
            ),
          ),
          Container(
            margin: widget.margin ??
                const EdgeInsets.only(
                  left: 5,
                ),
            child: Text(
              widget.title,
              style: context.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }

  //----------------------------------------------------------------------------
  @override
  void didUpdateWidget(covariant HaloCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _selected = widget.selected;
  }
}
