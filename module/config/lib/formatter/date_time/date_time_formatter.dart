import 'package:intl/intl.dart';

import 'halo_date_time/halo_date_time.dart';

export 'halo_date_time/halo_date_time.dart';
export 'halo_date_time/enums/start_of_week.dart';
export 'halo_date_time/enums/units.dart';

class _DateTimePattern {
  static const utc = 'yyyy-MM-ddThh:mm:ss+hh:mm:ss.SSS';
  static const app = 'yyyy-MM-dd';
}

class DateTimeFormatter {
  /// When time as timestamp => time (int)(millisecond)
  static HaloDateTime toHaloDateTime(dynamic time, [String? pattern]) {
    HaloDateTime.locale(Intl.defaultLocale);

    if (time is int) {
      return HaloDateTime.unixFromMillisecondsSinceEpoch(time);
    } else {
      return HaloDateTime(time, pattern);
    }
  }

  static String toFormatRequest(dynamic time, [String? pattern]) {
    var haloTime = toHaloDateTime(time, pattern);

    return haloTime.format(_DateTimePattern.app);
  }

  /// stackoverflow: https://stackoverflow.com/questions/60854312/how-do-i-format-datetime-with-utc-timezone-offset
  static String toFormatUtc(dynamic time, [String? pattern]) {
    var haloTime = toHaloDateTime(time, pattern);

    var timeResult = DateFormat(_DateTimePattern.utc).format(haloTime.dateTime);
    var offset = haloTime.dateTime.timeZoneOffset;
    var hours = offset.inHours > 0 ? offset.inHours : 1; // For fixing divide by 0

    if (!offset.isNegative) {
      timeResult = timeResult +
          "+" +
          offset.inHours.toString().padLeft(2, '0') +
          ":" +
          (offset.inMinutes % (hours * 60)).toString().padLeft(2, '0');
    } else {
      timeResult = timeResult +
          "-" +
          (-offset.inHours).toString().padLeft(2, '0') +
          ":" +
          (offset.inMinutes % (hours * 60)).toString().padLeft(2, '0');
    }

    return timeResult;
  }

  static int toFormatSinceEpoch(dynamic time, [String? pattern]) {
    var haloTime = toHaloDateTime(time, pattern);

    return haloTime.dateTime.millisecondsSinceEpoch;
  }
}
