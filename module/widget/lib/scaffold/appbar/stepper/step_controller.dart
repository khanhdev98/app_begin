part of 'stepper_appbar_custom.dart';

class StepController {
  int currentStep = 0;
  List<StepData> steps = [];

  final bool keepPage;
  final int initialPage;
  late final PageController pageController;
  late final ScrollController scrollController;

  StepController({
    this.keepPage = true,
    this.initialPage = 0,
    List<StepData>? steps,
    PageController? pageController,
    ScrollController? scrollController,
  }) {
    this.steps = steps ?? [];
    this.scrollController = scrollController ?? ScrollController();
    this.pageController = pageController ??
        PageController(
          keepPage: keepPage,
          initialPage: initialPage,
        );
  }

  int get count => steps.length - 1;

  bool isLast(int index) {
    return count == index;
  }

  bool isFirst(int index) {
    return 0 == index;
  }

  void goToPage(int index) {
    if (index <= 0 || index <= count) {
      currentStep = index;
      _animatePageSwitch(currentStep);
    }
  }

  void goToNextPage() {
    if (currentStep < count) {
      currentStep++;
      _animatePageSwitch(currentStep);
    }
  }

  void goToPreviousPage() {
    if (currentStep > 0) {
      currentStep--;
      _animatePageSwitch(currentStep);
    }
  }

  void _animatePageSwitch(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }
}
