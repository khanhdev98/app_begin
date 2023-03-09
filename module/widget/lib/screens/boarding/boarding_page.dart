import 'package:content/content.dart';
import 'package:flutter/material.dart';
import 'package:theme/material3/color/color_schemes.dart';
import 'package:theme/theme.dart';
import 'package:widget/screens/boarding/src/effects/expanding_dots_effect.dart';
import 'package:widget/screens/boarding/src/smooth_page_indicator.dart';

import '../../di/auth_router.dart';
import 'boarding_overview.dart';
import 'model/boarding_model.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surfaceColor,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                BoardingOverviewItem(
                  model: BoardingModel(
                    content: "Anywhere, anytime. The time is at your discretion so study whenever you want",
                    iconPath: "",
                    header: "header",
                  ),
                ),
                BoardingOverviewItem(
                  model: BoardingModel(
                    content: "",
                    iconPath: "",
                    header: "",
                  ),
                ),
                BoardingOverviewItem(
                  model: BoardingModel(
                    content: "",
                    iconPath: "",
                    header: "",
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: context.primaryColor,
                radius: 6,
                dotHeight: 6,
                dotWidth: 6,
                expansionFactor: 4,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(AppCommon.signIn);
                      },
                      child: Text(
                        Str.of(context).sign_in,
                        textAlign: TextAlign.left,
                        style: context.bodyMedium?.medium,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(AppCommon.signIn);
                      Navigator.of(context)
                          .pushNamed(AppCommon.signIn);
                    },
                    child: Text(Str.of(context).sign_up),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
