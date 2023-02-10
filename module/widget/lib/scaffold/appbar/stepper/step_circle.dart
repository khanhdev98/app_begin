part of 'stepper_appbar_custom.dart';

class _StepCircle extends StatelessWidget {
  final double size;
  final StepData step;
  final Color selectedColor;
  final Color unSelectedColor;
  final Color? selectedOuterCircleColor;

  const _StepCircle({
    Key? key,
    required this.step,
    required this.selectedColor,
    required this.unSelectedColor,
    this.selectedOuterCircleColor,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _fillColor(),
        border: Border.all(
          width: 2,
          color: _borderColor(),
        ),
      ),
    );
  }

  Color _fillColor() {
    if (step.state == StepState.selected) {
      return selectedColor;
    } else {
      return unSelectedColor;
    }
  }

  Color _borderColor() {
    if (step.state == StepState.selected) {
      return selectedOuterCircleColor ?? selectedColor;
    } else {
      return unSelectedColor;
    }
  }
}
