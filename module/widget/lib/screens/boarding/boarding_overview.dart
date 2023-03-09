import 'package:content/content.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import 'model/boarding_model.dart';

class BoardingOverviewItem extends StatelessWidget {
  final BoardingModel model;
  final Function()? onTapLearnMore;

  const BoardingOverviewItem({
    Key? key,
    required this.model,
    this.onTapLearnMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32).copyWith(
          top: MediaQuery.of(context).size.height * 0.15,
        ),
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                model.iconPath,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 54,
              width: 54,
            ),
            Text(
              model.header,
              style: context.headlineLarge?.primary,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
              width: 24,
            ),
            Text(
              model.content,
              textAlign: TextAlign.center,
              style: context.titleLarge?.normal.copyWith(
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                onTapLearnMore?.call();
              },
              child: Text(
                Str.of(context).boarding_learn_more,
                style: context.titleLarge?.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
