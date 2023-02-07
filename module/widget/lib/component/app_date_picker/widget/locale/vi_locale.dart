import 'locale.dart';
import 'relative_time.dart';
import '../enums/start_of_week.dart';

class ViLocale extends Locale {
  StartOfWeek strtOfWeek;
  ViLocale(this.strtOfWeek);

  @override
  RelativeTime relativeTime() => ViRelativeTime();

  @override
  List<String>? ordinals() => null;

  @override
  StartOfWeek startOfWeek() => strtOfWeek;
}

class ViRelativeTime extends RelativeTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'trong';
  @override
  String suffixAgo() => 'trước';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'một vài giây';
  @override
  String aboutAMinute(int minutes) => 'một phút';
  @override
  String minutes(int minutes) => '$minutes phút';
  @override
  String aboutAnHour(int minutes) => 'một giờ';
  @override
  String hours(int hours) => '$hours giờ';
  @override
  String aDay(int hours) => 'một ngày';
  @override
  String days(int days) => '$days ngày';
  @override
  String aboutAMonth(int days) => 'một tháng';
  @override
  String months(int months) => '$months tháng';
  @override
  String aboutAYear(int year) => 'một năm';
  @override
  String years(int years) => '$years năm';
  @override
  String wordSeparator() => ' ';
}
