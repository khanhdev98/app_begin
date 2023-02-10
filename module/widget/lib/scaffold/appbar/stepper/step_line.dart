part of 'stepper_appbar_custom.dart';

class _StepLine extends StatelessWidget {
  final double height;
  final double width;
  final double thickness;
  final StepData step;
  final bool hideLine;
  final Color selectedColor;
  final Color unSelectedColor;

  const _StepLine({
    Key? key,
    required this.width,
    required this.step,
    required this.selectedColor,
    required this.unSelectedColor,
    this.height = 16,
    this.thickness = 1,
    this.hideLine = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      child: Container(
        color: _lineColor(),
        height: thickness,
      ),
    );
  }

  Color? _lineColor() {
    if (hideLine) {
      return null;
    }
    if (step.state == StepState.selected) {
      return unSelectedColor;
    } else {
      return unSelectedColor;
    }
  }
}
