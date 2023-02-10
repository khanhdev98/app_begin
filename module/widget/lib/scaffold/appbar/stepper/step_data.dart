part of 'stepper_appbar_custom.dart';

typedef StepBottomBuilder = Widget Function(
  int currentIndex,
  int totalStep,
);

enum StepState { selected, unSelected }

class StepData {
  bool isValid;
  StepState state;

  final String title;
  final Widget widget;
  final TextStyle? style;
  late Function(ScrollController) _goToMe;

  StepData({
    required this.title,
    required this.widget,
    this.style,
    this.isValid = false,
    this.state = StepState.unSelected,
  });
}
