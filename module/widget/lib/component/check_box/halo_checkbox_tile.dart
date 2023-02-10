import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import 'halo_checkbox.dart';

class HaloCheckboxTile extends StatefulWidget {
  const HaloCheckboxTile(
      {Key? key,
      this.title,
      required this.value,
      required this.onChanged,
      this.validator,
      this.futureValidator})
      : super(key: key);
  final String? title;
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final bool Function(bool)? validator;
  final Future<bool> Function(bool)? futureValidator;

  @override
  State<HaloCheckboxTile> createState() => _HaloCheckboxTileState();
}

class _HaloCheckboxTileState extends State<HaloCheckboxTile> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Row(
        children: [
          HaloCheckbox(
            value: _value,
            onChanged: widget.onChanged != null ? (_) => _onTap() : null,
          ),
          if (widget.title != null)
            Expanded(
              child: Text(widget.title!,
                  style: widget.onChanged != null
                      ? context.bodyMedium
                      : context.bodyMedium?.copyWith(color: context.disableTextColor)),
            )
        ],
      ),
    );
  }

  _onTap() {
    if (widget.onChanged != null) {
      _onChanged(_value);
    }
  }

  _onChanged(bool oldValue) async {
    if (widget.validator != null) {
      if (widget.validator!.call(oldValue)) {
        _notifyChanged(!oldValue);
      }
    } else if (widget.futureValidator != null) {
      if (await widget.futureValidator!.call(oldValue)) {
        _notifyChanged(!oldValue);
      }
    } else {
      _notifyChanged(!oldValue);
    }
  }

  _notifyChanged(bool value) {
    setState(() {
      _value = value;
    });
    widget.onChanged?.call(_value);
  }
}
