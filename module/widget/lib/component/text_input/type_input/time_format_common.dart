import 'dart:developer' as dv;
import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
/*-----------------------------------------------------------------------------*/
const String defaultDateFormat = 'yyyy-MM-dd';
class DateTimeUtils {
  DateTimeUtils._();

  static String? parseDurationFromMinute(int? minutes,
      {String? locationCode, String? space, String? delimiter}) {
    var duration = Duration(minutes: minutes ?? 0);
    return prettyDuration(duration,
        abbreviated: true,
        spacer: space ?? '',
        delimiter: delimiter ?? '',
        locale:
            DurationLocale.fromLanguageCode(locationCode ?? "en") ?? const EnglishDurationLocale());
  }


  

  // static String? flightTimeFormatApp({
  //   required BuildContext context,
  //   Duration? time,
  //   int? days,
  //   int? hours,
  //   int? minutes,
  //   int? milliseconds,
  // }) {
  //   int totalMinutes = (time?.inMinutes ?? 0) +
  //       Duration(days: days ?? 0).inMinutes +
  //       Duration(hours: hours ?? 0).inMinutes +
  //       (minutes ?? 0) +
  //       Duration(milliseconds: milliseconds ?? 0).inMinutes;
  //
  //   var duration = Duration(minutes: totalMinutes);
  //
  //   return context
  //       .localizations()
  //       ?.halo_abbreviated_duration_format(duration.inHours, duration.inMinutes % 60);
  // }

  static TimeOfDay formatTime12h(int hour, int minute, String format) {
    try {
      var format12h =
          "${hour.toString().padLeft(2, "0")}:${minute.toString().padLeft(2, "0")} $format";
      var dateTime = DateFormat.yMd("en").add_jm().parse("1900/01/01 $format12h");
      return TimeOfDay.fromDateTime(dateTime);
    } catch (e) {
      return TimeOfDay.now();
    }
  }

  static TimeOfDay? getTimeOfDay(String? time) {
    var timeFormat = DateFormat.yMd().format(DateTime.now().resetTime()) + " $time";
    try {
      return TimeOfDay.fromDateTime(DateFormat.yMd("en").add_jm().parse(timeFormat));
    } catch (e) {
      try {
        return TimeOfDay.fromDateTime(DateFormat.yMd("en").add_Hm().parse(timeFormat));
      } catch (e) {
        try {
          return TimeOfDay.fromDateTime(DateFormat.yMd("en").add_Hms().parse(timeFormat));
        } catch (e) {
          dv.log("Exception ${e.toString()}");
          return null;
        }
      }
    }
  }

  static String? formatTimeApp(String timeConfig, [String? language]) {
    try {
      DateTime dateTime = DateFormat(defaultDateFormat).parse(timeConfig);
      DateFormat formatter = DateFormat.yMd(language ?? Intl.defaultLocale);
      return formatter.format(dateTime);
    } catch (e) {
      return null;
    }
  }

   static DateTime? tryParse(String? date , {String? format}) {
    final formatSafe = format ?? defaultDateFormat;
    try {
      return DateFormat(formatSafe).parse(date!);
    } catch (e) {
      return null;
    }
  }

  static DateTime? parseFromConfig(String? date) {
    if (date != null) {
      try {
        return DateFormat(defaultDateFormat).parse(
          date,
        );
      } catch (e) {
        return DateFormat(defaultDateFormat, "en").parse(date);
      }
    } else {
      return null;
    }
  }

  static DateTime? parseFromMilliseconds(int? millisecondsSinceEpoch) {
    if (millisecondsSinceEpoch != null) {
      return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    } else {
      return null;
    }
  }

  static DateTime? parseConfigAndTime({String? date, String? time}) {
    if (date != null) {
      var duration = tryParseTime("$time.000000") ?? const Duration();
      var dateTime = DateFormat(defaultDateFormat).parse(date).add(duration);
      return dateTime;
    } else {
      return null;
    }
  }

  static String? totalTimeFormat(int? time) {
    return Duration(minutes: time ?? 0).toString().substring(0, 4);
  }

  static Duration parseDurationFromString(String durationValue) {
    String duration = durationValue;
    var seconds = durationValue.split(".");
    if (seconds.length > 2) return const Duration();
    if (seconds.length == 1 || seconds.isEmpty) {
      duration = "$durationValue:00.000000";
    } else {
      // case have seconds but length < 6
      if (seconds.last.length < 6) {
        duration = "${seconds.first}:00.000000";
      } else {
        duration = "${seconds.first}.${seconds.last.substring(0, 6)}";
      }
    }
    return tryParseTime(duration) ?? const Duration();
  }

  static DateTime? resetTime(DateTime? dateTime) => dateTime?.resetTime();

  static String formatTimeAppUTC(String? dateTime, {String? format, String? language}) {
    return DateFormat.yMd(language ?? Intl.defaultLocale)
        .addPattern('', " - ")
        .add_Hm()
        .format(DateTime.parse(dateTime ?? "2021-12-27T10:08:55.000+00:00").toLocal())
        .toString();
  }

  ///Thứ 7, dd/MM/yyyy (UTC+hh:mm)
  static String formatTimeAppWeekEEEEUTC(String? dateTime, {String? format, String? language}) {
    return DateFormat.E(language ?? Intl.defaultLocale)
        .addPattern('', ",")
        .add_yMd()
        .addPattern('', " (UTC +")
        .add_Hm()
        .addPattern('', ")")
        .format(DateTime.parse(dateTime ?? "2021-12-27T10:08:55.000+00:00").toLocal())
        .toString();
  }

  static String formatTimeConfigUTC(String? dateTime, {String? format, String? language}) {
    return DateFormat.yMd(language ?? Intl.defaultLocale)
        .format(DateTime.parse(dateTime ?? "2021-12-27T10:08:55.000+00:00").toLocal())
        .toString();
  }
}

extension DateFormatExtended on DateTime {
  String formatters(String format) {
    DateFormat formatter = DateFormat(format);
    return formatter.format(this);
  }

   bool isBeforeDate(DateTime other) => resetTime().isBefore(other.resetTime());

  bool isBeforeOrSameDate(DateTime other) =>
      resetTime().isAtSameMomentAs(other.resetTime()) || isBeforeDate(other);

  bool isAfterDate(DateTime other) => resetTime().isAfter(other.resetTime());

  bool isAfterOrSameDate(DateTime other) =>
      resetTime().isAtSameMomentAs(other.resetTime()) || isAfter(other);



  ///Eee dd-MM-yy
  String formatEEEDdMmYy() {
    DateFormat formatter = DateFormat("EEE, dd/MM/yy", "en");
    return formatter.format(this);
  }



  ///yyyy-MM-dd
  String formattersConfig() {
    DateFormat formatter = DateFormat(defaultDateFormat, "en");
    return formatter.format(this);
  }

  ///dd-MM-yyyy
  String formatDdMmYyyy() {
    DateFormat formatter = DateFormat("dd/MM/yyyy", "en");
    return formatter.format(this);
  }

  ///dd-MM-yy
  String formatDdMmYy() {
    DateFormat formatter = DateFormat('"dd/MM/yy"', "en");
    return formatter.format(this);
  }

  ///y/M/d
  String formatTimeApp([String? language]) {
    DateFormat formatter = DateFormat.yMd(language ?? Intl.defaultLocale);
    return formatter.format(this);
  }

  ///T7 - y/M/d
  String formatTimeAppWeekE([String? language]) {
    DateFormat formatter =
        DateFormat.E(language ?? Intl.defaultLocale).addPattern('', " - ").add_yMd();
    return formatter.format(this);
  }

  ///Th7, y/M/d
  String formatDateEyMd([String? language]) {
    DateFormat formatter =
        DateFormat.E(language ?? Intl.defaultLocale).addPattern('', ", ").add_yMd();
    return formatter.format(this);
  }

  ///y/M/d - HH:mm
  String formatTimeAppHm([String? language]) {
    DateFormat formatter =
        DateFormat.yMd(language ?? Intl.defaultLocale).addPattern('', " - ").add_Hm();
    return formatter.format(this);
  }

  ///HH:mm - y/M/d
  String formatHmTimeApp([String? language]) {
    DateFormat formatter =
        DateFormat.Hm(language ?? Intl.defaultLocale).addPattern('', " -").add_yMd();
    return formatter.format(toLocal());
  }

  ///y/M/d HH:mm:ss
  String formatTimeAppHms([String? language]) {
    DateFormat formatter =
        DateFormat.yMd(language ?? Intl.defaultLocale).addPattern('', " ").add_Hms();
    return formatter.format(this);
  }
  

  ///Thứ bảy, y/M/d
  String formatTimeAppWeekEEEE([String? language]) {
    DateFormat formatter =
        DateFormat.EEEE(language ?? Intl.defaultLocale).addPattern('', ',').add_yMd();
    return formatter.format(this);
  }

  ///Thứ bảy
  String formatStandaloneWeek([String? language]) {
    DateFormat formatter = DateFormat("EEEE", language ?? Intl.defaultLocale)
      ..dateSymbols.STANDALONENARROWWEEKDAYS;
    return formatter.format(this);
  }

  String formatTimeAppWeekEE([String? language]) {
    DateFormat formatter =
        DateFormat.E(language ?? Intl.defaultLocale).addPattern('', ',').add_yMd();
    return formatter.format(this);
  }

  TimeOfDay toTimeOfDate() {
    TimeOfDay timeOfDay = TimeOfDay.fromDateTime(this);
    return timeOfDay;
  }

  /// this language will get am pm format for +7 time zone
  String format12h([String language = "en"]) {
    DateFormat formatter = DateFormat.jm(language);
    return formatter.format(this);
  }

  ///reset duration của datetime
  DateTime resetTime() {
    return DateTime(
      year,
      month,
      day,
    );
  }
}

///-----------------------------------------------------------------------------*/
extension TimeOfDayExtention on TimeOfDay {
  Duration toDuration() {
    return Duration(
      hours: hour,
      minutes: minute,
    );
  }

  String formatters(String format) {
    DateFormat formatter = DateFormat(format);
    var now = DateTime.now().resetTime().add(toDuration());
    return formatter.format(now);
  }

  /// this language will get am pm format for +7 time zone
  String format12h([String? language = "en"]) {
    DateFormat formatter = DateFormat.jm(language ?? Intl.defaultLocale);
    var now = DateTime.now().resetTime().add(toDuration());
    return formatter.format(now);
  }

  /// this language will get am pm format for +7 time zone
  String format24h([String? language = "en"]) {
    DateFormat formatter = DateFormat.Hm(language ?? Intl.defaultLocale);
    var now = DateTime.now().resetTime().add(toDuration());
    return formatter.format(now);
  }
}
