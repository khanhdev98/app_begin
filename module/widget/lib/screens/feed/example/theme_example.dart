import 'package:flutter/material.dart';
import 'package:theme/material3/icons/app_icon.dart';
import 'package:theme/material3/m3_theme_lib.dart';

import '../../../component/bottom_bar/halo_bottom_navigation_bar.dart';
import '../../../component/bottom_sheet/app_bottom_sheet.dart';
import '../../../component/check_box/halo_checkbox.dart';
import '../../../component/dialog/app_alert_dialog.dart';
import '../../../component/radio/halo_radio.dart';
import '../../../component/switch/halo_switch.dart';

class ThemeExample extends StatefulWidget {
  const ThemeExample({
    Key? key,
  }) : super(key: key);

  @override
  State<ThemeExample> createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample> with TickerProviderStateMixin {
  int radioIndex = 0;
  bool switchValue = false;
  bool checkboxValue = false;
  bool chipSelected = true;
  int? choiceChipValue = 1;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  final GlobalKey<FormState> _formKeyTheme = GlobalKey<FormState>();

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen name"),
        leading: IconButton(
          icon: AppIcons.back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Column(
            children: [
              const Divider(height: 2),
              TabBar(
                controller: _tabController,
                tabs: const <Widget>[
                  Tab(
                    text: "tab 1",
                  ),
                  Tab(
                    text: "tab ",
                  ),
                  Tab(
                    text: "tab 3",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HaloBottomNavigationBar(
        items: <HaloNavigationBarItem>[
          HaloNavigationBarItem(
            icon: const Icon(Icons.home),
            title: 'Home',
          ),
          HaloNavigationBarItem(
            icon: const Icon(Icons.notifications),
            title: 'Notification',
          ),
        ],
        onTap: (int value) {},
      ),
      body: Container(
        color: context.surfaceColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [
            spacing(),
            _buildTextExample,
            spacing(),
            _buildButtonExample,
            spacing(),
            _buildSwitchExample,
            spacing(),
            _buildChipExample,
            spacing(),
            _buildFromExample,
            spacing(),
            _buildBottomSheetExample,
            spacing(),
            _buildDialogExample,
            spacing(),
          ],
        ),
      ),
    );
  }

  Widget spacing() {
    return HaloSpacing.small;
  }

  Widget get _buildDialogExample {
    return Column(
      children: [
        ElevatedButton(
          child: const Text("Dialog"),
          onPressed: () {
            AppAlertDialog(
              title: "text dialog",
              buttonText: "next",
              content: "content message",
              onButtonPressed: () {},
            );
          },
        ),
        ElevatedButton(
          child: const Text("Dialog"),
          onPressed: () {
            AppAlertDialog(
              title: "text dialog",
              buttonText: "next",
              content: "content message lorem lorem ",
              onButtonPressed: () {},
            );;
          },
        ),
      ],
    );
  }

  Widget get _buildBottomSheetExample {
    return Column(
      children: [
        ElevatedButton(
          child: const Text("Bottom Sheet < 50%"),
          onPressed: () {
            AppBottomSheet(
              title: "bottomsheet",
              initialChildSize: 0.3,
              maxChildSize: 1,
              minChildSize: 0.3,
              actions: [
                ElevatedButton(onPressed: () {}, child: const Text('button'))
              ],
              child: Column(
                children: const [
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Bottom Sheet > 50 % && < 100%"),
          onPressed: () {
            AppBottomSheet(
              title: "bottomsheet",
              initialChildSize: 0.3,
              maxChildSize: 1,
              minChildSize: 0.3,
              actions: [
                ElevatedButton(onPressed: () {}, child: const Text('button'))
              ],
              child: Column(
                children: const [
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              ),
            );
          },
        ),
        ElevatedButton(
          child: const Text("Bottom Sheet > 100%"),
          onPressed: () {
            AppBottomSheet(
              title: "bottomsheet",
              initialChildSize: 0.3,
              maxChildSize: 1,
              minChildSize: 0.3,
              actions: [
                ElevatedButton(onPressed: () {}, child: const Text('button'))
              ],
              child: Column(
                children: const [
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget get _buildTextExample {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Card Header", style: context.cardHeader),
        Text("Card title", style: context.cardTitle),
        Text("Card sub title", style: context.cardSubTitle),
        const Text("Default text, content"),
        Text("Label Large, highlight", style: context.labelLarge),
        Row(
          children: [
            Text("Small Price: ", style: context.bodyMedium),
            spacing(),
            Text("1.234.000 VND", style: context.labelLarge?.priceSmall.notice),
          ],
        ),
        Row(
          children: [
            Text("Medium Price: ", style: context.bodyLarge),
            spacing(),
            Text("1.234.000 VND", style: context.labelLarge?.notice),
          ],
        ),
        Row(
          children: [
            Text("Large Price: ", style: context.titleLarge?.body),
            spacing(),
            Text("1.234.000 VND", style: context.labelLarge?.priceLarge.notice),
          ],
        ),
        Text("Text medium weight", style: context.titleLarge?.body.medium),
      ],
    );
  }

  Widget get _buildFromExample {
    return Form(
      key: _formKeyTheme,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextFormField(
            maxLines: 1,
            decoration: const InputDecoration(
              labelText: "Number",
            ),
            onChanged: (a) {
              _formKeyTheme.currentState!.validate();
            },
            validator: (val) {
              // return !ValidateUtils.isValidNumber(val) ? "Invalid number" : null;
            },
          ),
          spacing(),
          const TextField(
            maxLines: 1,
            enabled: false,
            decoration: InputDecoration(
              labelText: "Disable",
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildChipExample {
    return Column(
      children: [
        Wrap(
          children: [
            FilterChip(
              label: const Text("Filter Enabled"),
              selected: chipSelected,
              onSelected: (bool value) {
                setState(() {
                  chipSelected = !chipSelected;
                });
              },
            ),
            spacing(),
            FilterChip(
              label: const Text('Disable'),
              selected: chipSelected,
              onSelected: null,
            ),
          ],
        ),
        Wrap(
          children: List<Widget>.generate(
            3,
            (int index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: ChoiceChip(
                  label: Text('Choice $index'),
                  selected: choiceChipValue == index,
                  onSelected: (bool selected) {
                    setState(() {
                      choiceChipValue = selected ? index : null;
                    });
                  },
                ),
              );
            },
          ).toList(),
        )
      ],
    );
  }

  Widget get _buildSwitchExample {
    return Wrap(
      children: [
        HaloSwitch(
          value: switchValue,
          onChanged: (val) {
            setState(
              () {
                switchValue = val;
              },
            );
          },
        ),
        HaloSwitch(
          value: switchValue,
          onChanged: null,
        ),
        HaloRadio(
          value: 0,
          groupValue: radioIndex,
          onChanged: (index) {
            setState(
              () {
                radioIndex = 0;
              },
            );
          },
        ),
        HaloRadio(
          value: 1,
          groupValue: radioIndex,
          onChanged: (index) {
            setState(
              () {
                radioIndex = 1;
              },
            );
          },
        ),
        HaloCheckbox(
          onChanged: (bool? val) {
            setState(
              () {
                checkboxValue = val!;
              },
            );
          },
          value: checkboxValue,
        ),
        HaloCheckbox(
          value: checkboxValue,
          onChanged: null,
        ),
      ],
    );
  }

  Widget get _buildButtonExample {
    return Column(
      children: [
        Wrap(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Elevated",
              ),
            ),
            spacing(),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Elevated Orange",
              ),
              style: getElevatedButtonStyle(
                context.colorScheme,
                context.orangeColor,
              ),
            ),
            spacing(),
            const ElevatedButton(
              onPressed: null,
              child: Text(
                "Elevated disable",
              ),
            ),
          ],
        ),
        Wrap(
          children: [
            OutlinedButton.icon(
              icon: const Icon(Icons.add),
              onPressed: () {},
              label: const Text(
                "Outlined",
              ),
            ),
            spacing(),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Outlined Red",
              ),
              style: getOutlinedButtonStyle(
                context.colorScheme,
                context.colorScheme.error,
              ),
            ),
            spacing(),
            const OutlinedButton(
              onPressed: null,
              child: Text(
                "Outlined disable",
              ),
            ),
          ],
        ),
        Wrap(
          children: [
            TextButton(
              style: getTextButtonStyle(
                context.colorScheme,
                padding: const EdgeInsets.all(4),
                minimumSize: const Size(40, 20),
              ),
              onPressed: () {},
              child: const Text(
                "small text button",
              ),
            ),
            spacing(),
            TextButton(
              style: getTextButtonStyle(context.colorScheme),
              onPressed: () {},
              child: const Text(
                "Text button",
              ),
            ),
            spacing(),
            TextButton.icon(
              icon: const Icon(
                Icons.download,
                size: 18,
              ),
              onPressed: () {},
              label: const Text(
                "Color text btn",
              ),
              style: getTextButtonStyle(
                context.colorScheme,
                foregroundColor: context.orangeColor,
              ),
            ),
            spacing(),
            const TextButton(
              onPressed: null,
              child: Text(
                "Text btn disable",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
