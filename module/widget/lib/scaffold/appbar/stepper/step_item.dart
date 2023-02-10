part of 'stepper_appbar_custom.dart';

class _StepItem extends StatelessWidget {
  final double size;
  final double thickness;
  final double bounceSize;
  final StepData step;
  final bool isFirst;
  final bool isLast;
  final Color selectedColor;
  final Color unSelectedColor;
  final Color? selectedOuterCircleColor;

  const _StepItem({
    Key? key,
    required this.step,
    required this.selectedColor,
    required this.unSelectedColor,
    required this.isFirst,
    required this.isLast,
    this.selectedOuterCircleColor,
    this.size = 16,
    this.thickness = 1,
    this.bounceSize = 45,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    step._goToMe = (controller) {
      var render = context.findRenderObject() as RenderBox?;
      if (render != null) {
        controller.position.ensureVisible(
          render,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    };

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _StepLine(
          step: step,
          height: size,
          width: _firstWidth(context),
          hideLine: isFirst,
          thickness: thickness,
          selectedColor: selectedColor,
          unSelectedColor: unSelectedColor,
        ),
        const SizedBox(
          height: 8,
          width: 8,
        ),
        _StepCircle(
          step: step,
          size: size,
          selectedColor: selectedColor,
          unSelectedColor: unSelectedColor,
          selectedOuterCircleColor: selectedOuterCircleColor,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Text(
            step.title,
            style: _titleStyle(context),
          ),
        ),
      ],
    );
  }

  TextStyle? _titleStyle(BuildContext context) {
    var style = step.style ?? context.labelLarge;
    return style;
  }

  double _firstWidth(BuildContext context) {
    return isFirst ? 0 : (_contentSize(context) + bounceSize) / 2;
  }

  double _lastWidth(BuildContext context) {
    return isLast ? _contentSize(context) / 2 : (_contentSize(context) + bounceSize) / 2;
  }

  double _contentSize(BuildContext context) {
    return _Utils.getTextSize(
      step.title,
      style: _titleStyle(context),
    );
  }
}
