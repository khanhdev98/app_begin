import 'locale.dart';
import 'relative_time.dart';
import '../enums/start_of_week.dart';

class NlLocale extends Locale {
  StartOfWeek strtOfWeek;
  NlLocale(this.strtOfWeek);

  @override
  RelativeTime relativeTime() => NlRelativeTime();

  @override
  List<String>? ordinals() => ['.', '.', '.', '.'];

  @override
  StartOfWeek startOfWeek() => strtOfWeek;
}

class NlRelativeTime extends RelativeTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'over';
  @override
  String suffixAgo() => 'geleden';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'een paar seconden';
  @override
  String aboutAMinute(int minutes) => 'een minuut';
  @override
  String minutes(int minutes) => '$minutes minuten';
  @override
  String aboutAnHour(int minutes) => 'een uur';
  @override
  String hours(int hours) => '$hours uur';
  @override
  String aDay(int hours) => 'een dag';
  @override
  String days(int days) => '$days dagen';
  @override
  String aboutAMonth(int days) => 'een maand';
  @override
  String months(int months) => '$months maanden';
  @override
  String aboutAYear(int year) => 'een jaar';
  @override
  String years(int years) => '$years jaar';
  @override
  String wordSeparator() => ' ';
}
