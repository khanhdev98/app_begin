import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import 'halo_radio.dart';

enum Gender { male, female }

typedef OnGenderChange = void Function(Gender);

class GenderRadio extends StatefulWidget {
  const GenderRadio({
    Key? key,
    this.defaultGender,
    this.background,
    this.genderChange,
  }) : super(key: key);
  final Color? background;
  final Gender? defaultGender;
  final OnGenderChange? genderChange;

  @override
  State<GenderRadio> createState() => GenderRadioState();
}

class GenderRadioState extends State<GenderRadio> {
  Gender _character = Gender.male;

  String get gender => _character == Gender.male ? "M" : "F";

  @override
  void initState() {
    if (widget.defaultGender != null) {
      _character = widget.defaultGender!;
    }
    super.initState();
  }

  void setGender(String gender) {
    if (gender == "M") {
      setState(() {
        _character = Gender.male;
      });
    } else if (gender == "F") {
      setState(() {
        _character = Gender.female;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.background ?? Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: HaloSize.paddingXS),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Wrap(crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
                'gender'),
            HaloSpacing.normal,
            _LabeledRadio(
              label: "Male",
              value: Gender.male,
              groupValue: _character,
              onChanged: (Gender newValue) {
                widget.genderChange?.call(newValue);
                setState(() {
                  _character = newValue;
                });
              },
            ),
            HaloSpacing.small,
            _LabeledRadio(
              label: 'Female',
              value: Gender.female,
              groupValue: _character,
              onChanged: (Gender newValue) {
                widget.genderChange?.call(newValue);
                setState(() {
                  _character = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _LabeledRadio extends StatelessWidget {
  const _LabeledRadio({
    Key? key,
    required this.label,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final Gender groupValue;
  final Gender value;
  final ValueChanged<Gender> onChanged;

  bool get checked => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          if (value != groupValue) {
            onChanged(value);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HaloRadio<Gender>(
              groupValue: groupValue,
              value: value,
              visualDensity: VisualDensity.compact,
              onChanged: (Gender? newValue) {
                onChanged(newValue!);
              },
            ),
            Text(
              label,
              style: checked ? context.labelLarge : context.bodyMedium,
            ),
            HaloSpacing.xSmall
          ],
        ),
      ),
    );
  }
}
