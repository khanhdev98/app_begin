import '../enums/start_of_week.dart';
import 'de_locale.dart';
import 'en_locale.dart';
import 'es_locale.dart';
import 'fa_locale.dart';
import 'fr_locale.dart';
import 'hi_locale.dart';
import 'id_locale.dart';
import 'it_locale.dart';
import 'ja_locale.dart';
import 'ko_locale.dart';
import 'locale.dart';
import 'nb_locale.dart';
import 'nl_locale.dart';
import 'pl_locale.dart';
import 'pt_locale.dart';
import 'ru_locale.dart';
import 'th_locale.dart';
import 'uk_locale.dart';
import 'az_locale.dart';
import 'sv_locale.dart';
import 'tr_locale.dart';
import 'vi_locale.dart';
import 'zh_cn_locale.dart';
import 'zh_locale.dart';
import 'bn_locale.dart';

Map<String, Locale> _availableLocales = {
  'vi': ViLocale(StartOfWeek.sunday),
  'en': EnLocale(StartOfWeek.sunday),
  'en_us': EnLocale(StartOfWeek.sunday),
  'en_sg': EnLocale(StartOfWeek.sunday),
  'en_au': EnLocale(StartOfWeek.sunday),
  'en_ca': EnLocale(StartOfWeek.sunday),
  'en_gb': EnLocale(StartOfWeek.monday),
  'en_ie': EnLocale(StartOfWeek.monday),
  'en_il': EnLocale(StartOfWeek.sunday),
  'en_nz': EnLocale(StartOfWeek.sunday),
  'es': EsLocale(StartOfWeek.monday),
  'es_do': EsLocale(StartOfWeek.monday),
  'es_us': EsLocale(StartOfWeek.sunday),
  'fr': FrLocale(StartOfWeek.monday),
  'fr_ch': FrLocale(StartOfWeek.monday),
  'fr_ca': FrLocale(StartOfWeek.sunday),
  'zh': ZhCnLocale(StartOfWeek.sunday),
  'zh_cn': ZhCnLocale(StartOfWeek.sunday),
  'zh_hk': ZhLocale(StartOfWeek.sunday),
  'zh_tw': ZhLocale(StartOfWeek.sunday),
  'de': DeLocale(StartOfWeek.monday),
  'de_de': DeLocale(StartOfWeek.monday),
  'de_at': DeLocale(StartOfWeek.monday),
  'de_ch': DeLocale(StartOfWeek.monday),
  'it': ItLocale(StartOfWeek.monday),
  'it_ch': ItLocale(StartOfWeek.monday),
  'az': AzLocale(StartOfWeek.monday),
  'id': IdLocale(StartOfWeek.sunday),
  'ja': JaLocale(StartOfWeek.sunday),
  'ko': KoLocale(StartOfWeek.sunday),
  'ru': RuLocale(StartOfWeek.monday),
  'uk': UkLocale(StartOfWeek.monday),
  'hi': HiLocale(StartOfWeek.sunday),
  'pt': PtLocale(StartOfWeek.monday),
  'pt_br': PtLocale(StartOfWeek.sunday),
  'pl': PlLocale(StartOfWeek.monday),
  'tr': TrLocale(StartOfWeek.monday),
  'sv': SvLocale(StartOfWeek.monday),
  'nb': NbLocale(StartOfWeek.monday),
  'fa': FaLocale(true, StartOfWeek.saturday),
  'bn': BnLocale(StartOfWeek.sunday),
  'nl': NlLocale(StartOfWeek.monday),
  'th': ThLocale(StartOfWeek.sunday)
};

Locale getLocale(String locale) {
  return _availableLocales[locale.toLowerCase()] ??
      EnLocale(StartOfWeek.sunday);
}

bool isLocalAvailable(String locale) {
  return !_availableLocales.containsKey(locale.toLowerCase());
}

List<String> getAllLocales() {
  return _availableLocales.keys.toList();
}
