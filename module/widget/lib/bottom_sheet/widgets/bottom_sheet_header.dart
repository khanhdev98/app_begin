import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: HaloPadding.vertical,
        child: Column(
          children: [
            Container(
              height: 4,
              width: 32,
              decoration: BoxDecoration(
                color: context.outlineColor,
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: HaloSize.padding,
                bottom: HaloSize.paddingXS,
              ),
              child: Text(
                title,
                style: context.titleLarge?.medium,
              ),
            ),
            HaloDivider.horizontal,
          ],
        ),
      ),
    );
  }
}
