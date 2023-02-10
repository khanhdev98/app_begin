import 'dart:io';

import 'package:content/content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/material3/m3_theme_lib.dart';
import 'package:widget/di/auth_router.dart';

import '../example/theme_example.dart';

class FeedScreen extends StatefulWidget {

  const FeedScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: Platform.isAndroid,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: _buildDrawer,
          appBar: AppBar(
            title: const Text('Hahalolo'),
            actions: _buildAction,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(74),
              child: Column(
                children: [
                  const Divider(height: 2),
                  _buildTab,
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              _buildPage(),
              _buildPage(),
              _buildPage(),
              _buildPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(),
      ),
    );
  }

  List<Widget> get _buildAction {
    return [
      IconButton(
        icon: const Icon(Icons.color_lens_outlined),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const ThemeExample();
            },
          ));
        },
      )
    ];
  }

  Widget get _buildTab {
    return const TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.flight),
          text: 'tab1',
        ),
        Tab(
          icon: Icon(Icons.tour),
          text: 'tab2',
        ),
        Tab(
          icon: Icon(Icons.hotel),
          text: 'tab3',
        ),
        Tab(
          icon: Icon(Icons.car_rental),
          text: 'tab4',
        ),
      ],
    );
  }

  Widget get _buildDrawer {
    return Drawer(
      backgroundColor: context.colorScheme.surfaceVariant,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            child: Column(
              children: [
                Image.network(
                  "",
                  height: 50,
                  width: 50,
                  errorBuilder: (_, __, ___) => const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                ),
                const Text(
                  "User: Non Login",
                )
              ],
            ),
          ),
            ListTile(
              leading: const Icon(Icons.shopping_cart), //Image.asset(PathIcons.icHandCarried),
              title: const Text('Your cart'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.note_alt_outlined), //Image.asset(PathIcons.icHandCarried),
              title: const Text('Hand note'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.ads_click_outlined), //Image.asset(PathIcons.icHandCarried),
              title: const Text('AFF'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payment account'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month), //Image.asset(PathIcons.icHandCarried),
              title: const Text('Date pickers'),
              onTap: () {

              },
            ),
          // TODO: LANG
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton.icon(
                    icon: const Icon(Icons.login),
                    label: const Text('Login'),
                    onPressed: _goToLoginScreen,
                  ),
          ),
        ],
      ),
    );
  }

  void _goToLoginScreen() {
    Navigator.of(context).pushNamed(AppCommon.signIn);
  }
}
