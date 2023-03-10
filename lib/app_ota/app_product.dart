import 'package:config/injectable/app_injector.dart';
import 'package:content/l10n/app_localizations.dart';
import 'package:content/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:theme/material3/color/color_schemes.dart';
import 'package:theme/material3/themes_data.dart';
import 'package:widget/component/extensions/first_where_or_default.dart';
import 'package:widget/component/flutter_easyloading-3.0.5/lib/src/easy_loading.dart';
import 'package:widget/di/auth_router.dart';
import 'package:widget/provider/location_provider.dart';
import 'package:widget/component/widget/error_screen.dart';

class AppProduct extends StatefulWidget {
  const AppProduct({Key? key, required this.onGenerate}) : super(key: key);
  final Route? Function(RouteSettings) onGenerate;

  @override
  State<AppProduct> createState() => _AppProductState();
}

class _AppProductState extends State<AppProduct> {

  @override
  void initState() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.dualRing
      ..loadingStyle = EasyLoadingStyle.custom
      ..maskType = EasyLoadingMaskType.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = M3Colors.lightColorScheme.primary
      ..backgroundColor = const Color.fromARGB(100, 22, 44, 33)
      ..indicatorColor = M3Colors.lightColorScheme.primary
      ..textColor = M3Colors.lightColorScheme.onPrimary
      ..maskColor = Colors.black.withOpacity(0.1)
      ..userInteractions = false
      ..dismissOnTap = false
      ..toastPosition = EasyLoadingToastPosition.bottom;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocaleProvider>(
        create: (context) => AppInjector.I.get<LocaleProvider>(),
        child: Consumer<LocaleProvider>(builder: (context, provider, child) {
          return MaterialApp(
            title: 'Begin app',
            themeMode: ThemeMode.light,
            theme: AppThemes.haloLightTheme,
            darkTheme: AppThemes.haloLightTheme,
            supportedLocales: L10n.I.values,
            localizationsDelegates: Str.localizationsDelegates,
            useInheritedMediaQuery: true,
            onGenerateRoute: widget.onGenerate,
            initialRoute: AppCommon.feed,
            locale: _findLocale(provider.languageCode),
            localeResolutionCallback: _localeResolution,
            onUnknownRoute: (settings) =>
                MaterialPageRoute(
                  builder: (context) => const ErrorPage(),
                ),
            builder: EasyLoading.init(
                data: (data) => data.copyWith(
                  textScaleFactor: 1,
                )),
          );
        }));
  }
}


Locale? _localeResolution(Locale? deviceLocale, Iterable<Locale> supportLocales) {
  /// Intl need locale default
  /// it depend on Locale of native device setting
  /// if Locale not found => default is [L10n.I.defaultLocale]

  String languageCode = deviceLocale?.languageCode ??  L10n.I.defaultLocale.languageCode;

  Intl.defaultLocale = languageCode;
  //HaloEnv.I.defaultLangCode = _languageCode!;
  return Locale(languageCode);
}

/// Thay ?????i th??ng tin locale trong application
/// C??c data c???n thay ?????i g???m
/// 1. Env.lang
/// 2. Intl.defaultLang
Locale _findLocale(String? localeCode) {
  return L10n.I.values.firstWhereOrDefault(
          (element) => element.languageCode.toUpperCase() == localeCode?.toUpperCase(),
      defaultValue: L10n.I.defaultLocale);
}