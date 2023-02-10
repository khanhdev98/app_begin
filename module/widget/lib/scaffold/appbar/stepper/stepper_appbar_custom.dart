import 'package:flutter/material.dart';
import 'package:theme/material3/color/color_schemes.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/component/validate/domain/decimal_formatter.dart';

import '../pinned/widget.dart';

part 'step_controller.dart';

part 'step_appbar_delegate.dart';

part 'step_circle.dart';

part 'step_item.dart';

part 'step_line.dart';

part 'step_data.dart';

part 'step_utils.dart';

class StepAppbarCustom extends StatefulWidget {
  final double size;
  final double thickness;
  final double bounceSize;
  final Color selectedColor;
  final Color unSelectedColor;
  final Color? selectedOuterCircleColor;
  final TextStyle? titleStyle;
  final List<StepData> steps;
  final StepBottomBuilder bottomBuilder;
  final String title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final StepController? controller;
  final bool contentScroll;
  final bool bottomAboveKeyBroad;

  const StepAppbarCustom({
    Key? key,
    required this.title,
    required this.steps,
    required this.bottomBuilder,
    this.size = 16,
    this.thickness = 1,
    this.bounceSize = 24,
    this.selectedColor = Colors.blue,
    this.unSelectedColor = Colors.grey,
    this.contentScroll = true,
    this.bottomAboveKeyBroad = true,
    this.selectedOuterCircleColor,
    this.titleStyle,
    this.centerTitle,
    this.actions,
    this.leading,
    this.controller,
  }) : super(key: key);

  @override
  State<StepAppbarCustom> createState() => _StepAppbarCustomState();
}

class _StepAppbarCustomState extends State<StepAppbarCustom> {
  late StepController _controller;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? StepController();
    _controller.steps = widget.steps;
  }

  @override
  Widget build(BuildContext context) {
    _updateStepStatus();
    return Scaffold(
      body: NestedScrollView(
        controller: controller,
        headerSliverBuilder: (a, innerBoxIsScrolled) {
          return [
            _buildAppbar(),
          ];
        },
        body: _buildPanels(),
      ),
      bottomNavigationBar: widget.bottomAboveKeyBroad.let((self) {
        if (self == true) {
          return null;
        }
        return widget.bottomBuilder(
          _controller.currentStep,
          _controller.count,
        );
      }),
      bottomSheet: widget.bottomAboveKeyBroad.let((self) {
        if (self == false) {
          return null;
        }
        return widget.bottomBuilder(
          _controller.currentStep,
          _controller.count,
        );
      }),
    );
  }

  Widget _buildAppbar() {
    return SliverAppBar(
      centerTitle: widget.centerTitle,
      actions: widget.actions,
      leading: widget.leading,
      title: Text(
        widget.title,
        style: widget.titleStyle,
      ),
      pinned: true,
      floating: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(54),
        child: _buildSteps(),
      ),
    );
  }

  Widget _buildPanels() {
    List<Widget> children = [];
    for (int index = 0; index <= _controller.count; index++) {
      if (widget.contentScroll) {
        children.add(
          SingleChildScrollView(
            child: _controller.steps[index].widget,
          ),
        );
      } else {
        children.add(_controller.steps[index].widget);
      }
    }

    return PageView(
      controller: _controller.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: children,
      onPageChanged: (index) {
        setState(() {
          _updateStepStatus();
          _controller.steps[index]._goToMe(
            _controller.scrollController,
          );
        });
      },
    );
  }

  Widget _buildSteps() {
    List<Widget> children = [];
    for (int index = 0; index <= _controller.count; index++) {
      children.add(_StepItem(
        step: _controller.steps[index],
        selectedColor: widget.selectedColor,
        unSelectedColor: widget.unSelectedColor,
        selectedOuterCircleColor: widget.selectedOuterCircleColor,
        thickness: widget.thickness,
        size: widget.size,
        bounceSize: widget.bounceSize,
        isFirst: _controller.isFirst(index),
        isLast: _controller.isLast(index),
      ));
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: _controller.scrollController,
        child: Row(
          children: children,
        ),
      ),
    );
  }

  void _updateStepStatus() {
    for (int index = 0; index <= _controller.count; index++) {
      if (index == _controller.currentStep) {
        _controller.steps[index].state = StepState.selected;
      } else {
        _controller.steps[index].state = StepState.unSelected;
      }
    }
  }
}
