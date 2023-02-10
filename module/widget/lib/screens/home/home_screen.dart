import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/theme.dart';
import 'package:widget/di/auth_router.dart';

import '../../component/flutter_easyloading-3.0.5/lib/flutter_easyloading.dart';
import '../../scaffold/appbar/expanded/expanded_appbar_custom.dart';
import '../feed/sign/bloc/sign_bloc_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 240;
  final _keyContainer = GlobalKey();

  SignBlocCubit get _signBloc => context.read<SignBlocCubit>();


  onPressed() async {
    EasyLoading.show();
    await Future.delayed(const Duration(milliseconds: 1000), () {
      EasyLoading.dismiss();
    }).then((value) => _signBloc.signOut());
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        height = (_keyContainer.currentContext?.size?.height ?? 0) + 70;
      });
      if (!mounted) return;
      // bloc signIn
      _signBloc.stream.listen((event) => event.trigger(context));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  ExpandedAppbarCustom(
        minAppbar: _buildMinAppBar(), maxAppBar: _buildMaxAppBar(), sliver: [Expanded(child: _bodyHome())]);
  }
  AppBar _buildMinAppBar() {
    return AppBar(
      leading: const SizedBox.shrink(),
      title: const Text("min app Bar"),
      centerTitle: true,
    );
  }

  Widget _buildMaxAppBar() {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          const _AppBartTransparent(
            leading: SizedBox.shrink(),
            title: "max app bar",
          ),
          Positioned(
            top: 80,
            left: 0,
            child: ConstrainedBox(
              key: _keyContainer,
              constraints: const BoxConstraints(
                minHeight: 100,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: HaloPadding.all,
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: HaloPadding.paddingHorizontal(HaloSize.paddingXXS),
                            child: Text(
                              "hello",
                              textAlign: TextAlign.center,
                              style: context.titleMedium,
                            ),
                          ),
                        ),
                        HaloSpacing.small,
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('next'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _bodyHome() {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: context.surfaceColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HaloSpacing.normal,
            _header(),
            HaloSpacing.normal,
            _body(),
            HaloSpacing.normal,
            _end(),
            HaloSpacing.normal,
            ElevatedButton(onPressed: () => onPressed(), child: const Text("Log out"))
          ],
        ),
      ),
    );
  }
  Widget _header() {
    return Column(
      children: [
        const Text(''),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, AppCommon.todoScreen);
        }, child: const Text("Todos"))
      ],
    );
  }
  Widget _body() {
    return Column(
      children: [
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, AppCommon.launcher);
        }, child: const Text("Launcher"))
      ],
    );
  }

  Widget _end() {
    return Column(
      children: [
        ElevatedButton(onPressed: () {}, child: const Text("Schedule"))
      ],
    );
  }
}

class _AppBartTransparent extends StatefulWidget {
  final List<Widget>? actions;
  final String? title;
  final Widget? leading;
  const _AppBartTransparent({Key? key, this.actions, this.title, this.leading}) : super(key: key);

  @override
  State<_AppBartTransparent> createState() => _AppBartTransparentState();
}
class _AppBartTransparentState extends State<_AppBartTransparent> {
  double spaceTop = 42;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        spaceTop = MediaQuery.of(context).viewPadding.top;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: spaceTop),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(PathIcons.backgroundHeaderSendMoney),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width,
      height: 165,
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Row(
          children: [
            const SizedBox(
              width: 4,
            ),
            widget.leading ??
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
            Expanded(
              child: Text(
                widget.title ?? "",
                style: context.appBarTitle?.setColor(Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            ...(widget.actions ??
                [
                  const SizedBox(
                    width: 48,
                  )
                ]),
          ],
        ),
      ),
    );
  }
}