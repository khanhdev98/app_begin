# HaloDateTime

[![.github/workflows/release.yml](https://github.com/jama5262/HaloDateTime/actions/workflows/release.yml/badge.svg)](https://github.com/jama5262/HaloDateTime/actions/workflows/release.yml)
[![codecov](https://codecov.io/gh/jama5262/HaloDateTime/branch/master/graph/badge.svg?token=Z2EGVUGWTE)](https://codecov.io/gh/jama5262/HaloDateTime)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Pub Version](https://img.shields.io/badge/pub-v5.0.0-blue)](https://pub.dev/packages/HaloDateTime)
[![Platform](https://img.shields.io/badge/platform-flutter%7Cweb%7Cdart%20vm-orange)](https://github.com/jama5262/HaloDateTime)


HaloDateTime is a Flutter (Android, IOS and Web) date time package inspired by [momentjs](https://momentjs.com/) for parsing, manipulating, querying and formatting dates

# Table of content
- [Parsing](#parsing)
    - [Now](#now)
    - [String](#string)
    - [String Formating](#string-formatting)
    - [Maps](#maps)
    - [Unix Timestamp](#unix-timestamp)
    - [HaloDateTime Cloning](#HaloDateTime-cloning)
    - [DateTime](#datetime)
    - [List](#list)
    - [UTC](#utc)
- [Get](#get)
    - [Millisecond](#millisecond)
    - [Second](#second)
    - [Minute](#minute)
    - [Hour](#hour)
    - [Date of Month](#date-of-month)
    - [Days in Month](#days-in-month)
    - [Day of Week](#day-of-week)
    - [Day of Year](#day-of-year)
    - [Week of Year](#week-of-year)
    - [Month](#month)
    - [Quarter](#quarter)
    - [Year](#year)
- [Manipulation](#manipulation)
    - [Add](#add)
    - [Subtract](#subtract)
    - [Start of Time](#start-of-time)
    - [End of Time](#end-of-time)
    - [Local](#local)
    - [UTC](#utc)
- [Display](#display)
    - [Format](#format)
    - [Time from Now](#time-from-now)
    - [Time from X](#time-from-x)
    - [Difference](#difference)
    - [Unix Timestamp (Milliseconds)](#unix-timestamp-milliseconds)
    - [Unix Timestamp (Seconds)](#unix-timestamp-seconds)
- [Query](#query)
    - [Is Before](#is-before)
    - [Is Same](#is-same)
    - [Is After](#is-after)
    - [Is Same or Before](#is-same-or-before)
    - [Is Same or After](#is-same-or-after)
    - [Is Between](#is-between)
    - [Is Leap Year](#is-leapyear)
    - [Is HaloDateTime](#is-HaloDateTime)
    - [Is DateTime](#is-datetime)
- [Locale Support](#locale-support)

# Parsing
### Now
To get the date now, just call `HaloDateTime()` without passing any parameters. This will return a HaloDateTime instance. See below
```dart
Jiff(); // Returns a HaloDateTime instance
HaloDateTime().dateTime; // Returns a dart DateTime.now()
HaloDateTime().format(); // Return a ISO 8601 date time format
```

### String
Creating a HaloDateTime from a string. See below
```dart
HaloDateTime("2021-5-25"); // A calendar date part
HaloDateTime("2021/5/25"); // A calendar date part separated by slash "/"
HaloDateTime("2021525"); // Basic (short) full date
HaloDateTime("2021-5-25 12:00:00.000"); // An hour, minute, second, and millisecond time part
HaloDateTime("2021-5-25T12:00:00.000"); // ISO date format
HaloDateTime("2021-5-25T12:00:00.000Z"); // ISO date format (UTC)
```

### String Formatting
To get a HaloDateTime date from a string, pass the string and its pattern to HaloDateTime as is parameters. See below
```dart
HaloDateTime("2021-5-25", "yyyy-MM-dd");
HaloDateTime("25-5-2021", "dd-MM-yyyy");
HaloDateTime("5-2021", "MM-yyyy");
```
You can also parse ordinal date formats. The date pattern for the ordinal date is `do`

```dart
HaloDateTime("Jan 19th", "MMM do");
HaloDateTime("19th January 2021", "do MMMM yyyy");
```

**_Note: HaloDateTime runs on top of the [Intl DateFormat](https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html) package, so you can find all the date time patterns used by HaloDateTime [here](https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html)_**

This is also same for HaloDateTime default formats. See below
```dart
HaloDateTime().MMMEd; // Tue, May 25
HaloDateTime("2021-5-25", "yyyy-MM-dd").yMMMMd; // May 25, 2021
```

### Maps
You can also create a HaloDateTime from a Map, Supported key pairs are,

`[ year, month, day, hour, minute, second and millisecond ]`. See below
```dart
HaloDateTime({
  "hour": 19,
  "minutes": 20
});

HaloDateTime({
  "year": 2019,
  "month": 10,
  "day": 19,
  "hour": 19
});
```

### Unix Timestamp
HaloDateTime can also parse timestamp milliseconds and seconds. Just call `HaloDateTime.unix()` which return a dart Datetime. See below
```dart
// Parsing a timestamp in milliseconds
HaloDateTime.unixFromMillisecondsSinceEpoch(1318781876406);

// Parsing a timestamp in seconds
HaloDateTime.unixFromSecondsSinceEpoch(1318781876).format(); // 2011-10-16T19:17:56.000
```

**_Note: `HaloDateTime.unixFromMillisecondsSinceEpoch() or HaloDateTime.unixFromSecondsSinceEpoch` returns a timestamp base on local time. You can also get it in UTC which returns a UTC in dart Datetime. See below_**
```dart
HaloDateTime.unixFromMillisecondsSinceEpoch(1318781876406).utc();
```

### HaloDateTime Cloning
HaloDateTime date time can be created from another HaloDateTime instance, a way of cloning.
```dart
var HaloDateTime1 = HaloDateTime([2021]);
var HaloDateTime2 = HaloDateTime(HaloDateTime1);
HaloDateTime1.add(years: 10);
HaloDateTime1.year; // 2031
HaloDateTime2.year; // 2021
```

Or you can use the clone method itself
```dart
var HaloDateTime1 = HaloDateTime([2021]);
var HaloDateTime2 = HaloDateTime1.clone();
HaloDateTime1.add(years: 10);
HaloDateTime1.year; // 2031
HaloDateTime2.year; // 2021
```

### DateTime
HaloDateTime date time can be created from a dart DateTime instance. See below
```dart
var dateTime = DateTime.now();
HaloDateTime(dateTime);

HaloDateTime(DateTime(2021, 5, 25)).yMMMM; // May 2021
```

### List
You can also create HaloDateTime from a List. But they should mirror the following order

`[ year, month, day, hour, minute, second, millisecond ]`
```dart
HaloDateTime([2021]); // January 1st 2021
HaloDateTime([2021, 10]); // October 1st 2021
HaloDateTime([2021, 10, 19]); // October 19th 2021
```

### UTC
Get date time in UTC. See below
```dart
// In local time
HaloDateTime().format(); // 2021-03-02T14:35:24.363919

// Change to UTC
var HaloDateTime = (HaloDateTime()..utc());
HaloDateTime.format(); // 2021-03-02T11:35:24.363919
```

# Get
### Millisecond
Get millisecond (Returns from 0 - 999)
```dart
HaloDateTime().millisecond;
```

### Second
Get second (Returns from 0 - 59)
```dart
HaloDateTime().second;
```
### Minute
Get minute (Returns from 0 - 59)
```dart
HaloDateTime().minute;
```
### Hour
Get hour (Returns from 0 - 23)
```dart
HaloDateTime().hour;
```
### Date of month
Get date of month (Returns from 1 - 31)
```dart
HaloDateTime().date;
```
### Days in month
Get days in a month (Returns from 28 - 31)
```dart
HaloDateTime().daysInMonth;
```
### Day of week
Get day of week (Returns from 1 - 7 that is [Sunday - Saturday] depending on locale start of week)
```dart
HaloDateTime().day;
```
### Day of year
Get day o year (Returns from 1 - 366)
```dart
HaloDateTime().dayOfYear;
```
### Week of year
Get week of year
```dart
HaloDateTime().week;
```
### Month
Get month (Returns from 1 - 12 [Jan - Dec])
```dart
HaloDateTime().month;
```
### Quarter
Get quarter (Returns from 1 - 4)
```dart
HaloDateTime().quarter;
```
### Year
Get year
```dart
HaloDateTime().year;
```

# Manipulation

### Add
This adds time to HaloDateTime by the following units `years, months, weeks, days, hours, minutes, seconds and milliseconds, microseconds and duration`. See below
```dart
HaloDateTime().add(years: 1);
HaloDateTime().add(days: 3);
HaloDateTime().add(months: 3, duration: Duration(days: 3));
HaloDateTime().add(years: 1, weeks: 3, duration: Duration(days: 3));
```
Below are the params that can be used

`[ years, months, weeks, days, hours, minutes, seconds, milliseconds, microseconds, duration ]`

```dart
var HaloDateTime = HaloDateTime()
    .startOf(Units.DAY)
    .add(days: 7, months: 1)
    .subtract(years: 1);
HaloDateTime.yMMMdjm; // Apr 8, 2020 9:00 PM
```

**_Note: Months and year are added in respect to how many days there are in a months and if a year is a leap year. See below_**

```dart
HaloDateTime("2021-1-31", "yyyy-MM-dd").yMMMd; // Jan 31, 2021
HaloDateTime("2021-1-31", "yyyy-MM-dd").add(months: 1).yMMMd; // Feb 28, 2021
```
### Subtract
This subtracts time from HaloDateTime by the following units `years, months, weeks, days, hours, minutes, seconds and milliseconds`. See below
```dart
HaloDateTime().subtract(years: 1);
HaloDateTime().subtract(days: 3);
```
### Start of Time
This set the HaloDateTime date time to a specific unit in time in terms of years, months, weeks, days, hours, minutes, seconds and milliseconds. See below

The units that are available are,

`[ Units.MILLISECOND, Units.SECOND, Units.MINUTE, Units.HOUR, Units.DAY, Units.WEEK, Units.MONTH, Units.YEAR ]`

```dart
HaloDateTime().startOf(Units.YEAR);    // Set to January 1st, 12:00 am this year
HaloDateTime().startOf(Units.MONTH);   // Set to the first of this month, 12:00 am
HaloDateTime().startOf(Units.WEEK);    // Set to the first day of this week, 12:00 am
HaloDateTime().startOf(Units.DAY);     // Set to 12:00 am today
HaloDateTime().startOf(Units.HOUR);    // Set to now, but with 0 mins, 0 secs, and 0 ms
HaloDateTime().startOf(Units.MINUTE);  // Set to now, but with 0 seconds and 0 milliseconds
HaloDateTime().startOf(Units.SECONDS);  // Set to now, but with 0 milliseconds;
```

```dart
var HaloDateTime = HaloDateTime()
    .startOf(Units.DAY)
    .add(days: 1);
    .format("MMMM do yyyy, h:mm:ss a"); // March 3rd 2021, 12:00:00 AM
```

### End of Time
This set the HaloDateTime date time to a specific unit in time in terms of years, months, weeks, days, hours, minutes, seconds and milliseconds. See below

```dart
HaloDateTime().endOf(Units.YEAR);    // Set to December 31st, 23:59:59:999 this year
HaloDateTime().endOf(Units.MONTH);   // Set to the end of this month, 23:59:59:999
HaloDateTime().endOf(Units.WEEK);    // Set to the end day of this week, 23:59:59:999
HaloDateTime().endOf(Units.DAY);     // Set to 23:59:59:999 today
```
### Local
Sets HaloDateTime to local time. See below
```dart
var HaloDateTime = HaloDateTime().utc(); // Time in utc
HaloDateTime.local(); // Set to local
```
### UTC
Sets HaloDateTime to UTC time. See below
```dart
var HaloDateTime = HaloDateTime(); // Time in local
HaloDateTime.utc(); // Set to utc
```
# Display
### Format
The format function takes in a string pattern, which can be found [here](https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html), and format them. See below
```dart
HaloDateTime().format("MMMM do yyyy, h:mm:ss a"); // October 19th 2019, 7:00:53 PM
HaloDateTime().format("EEEE"); // Saturday
HaloDateTime().format("yyyy [escaped] yyyy"); // 2019 escaped 2019

// Not passing a string pattern for format method will return an ISO Date format
HaloDateTime().format(); // 2019-10-19T19:00:53.090646
```
You can also use Intl Dateformat default methods to format. See below
```dart
HaloDateTime().yMMMMd; // October 19, 2019
HaloDateTime().yMMMMEEEEdjm; // Saturday, October 19, 2019 7:00 PM
```
### Time from Now
This method is used to get the relative time from now. See below
```dart
HaloDateTime("2007-1-29").fromNow(); // 14 years ago
HaloDateTime([2022, 10, 29]).fromNow(); // in a year
HaloDateTime(DateTime(2050, 10, 29)).fromNow(); // in 30 years

var HaloDateTime = HaloDateTime().startOf(Units.HOUR).fromNow(); // 9 minutes ago
```

### Time from X
This method is used to get the relative time from a specific date time. See below
```dart
var HaloDateTime1 = HaloDateTime("2007-1-28");
var HaloDateTime2 = HaloDateTime("2017-1-29", "yyyy-MM-dd");

HaloDateTime1.from(HaloDateTime2); // a day ago

HaloDateTime1.from([2017, 1, 30]); // 2 days ago
```
### Difference
Used to get the difference between two HaloDateTime date times. See below
```dart
// By default, diff method, get the difference in milliseconds
var HaloDateTime1 = HaloDateTime("2007-1-28", "yyyy-MM-dd");
var HaloDateTime2 = HaloDateTime("2017-1-29", "yyyy-MM-dd");
jiff1.diff(HaloDateTime2); // 86400000
```
Getting difference in another unit of measurement. The units that are available are,

`[ Units.MILLISECOND, Units.SECOND, Units.MINUTE, Units.HOUR, Units.DAY, Units.WEEK, Units.MONTH, Units.YEAR ]`
```dart
HaloDateTime([2007, 1, 28]).diff([2017, 1, 29], Units.DAY); // -3654
```

Also by default `diff` will truncate the result to return a whole number. To get decimal numbers, just pass a third param as `true`. See below
```dart
var HaloDateTime1 = HaloDateTime("2008-10", "yyyy-MM");
var HaloDateTime2 = HaloDateTime("2007-1", "yyyy-MM");

jiff1.diff(HaloDateTime2, Units.YEAR); // 1
jiff1.diff(HaloDateTime2, Units.YEAR, true); // 1.75
```
**_Note: Months and years are added in respect to how many days there are in a months and if its a year is a leap year._**

### Unix Timestamp (Milliseconds)
To get timestamp in milliseconds see below
```dart
HaloDateTime().valueOf();
```

### Unix Timestamp (Seconds)
To get timestamp in seconds see below
```dart
HaloDateTime().unix();
```

# Query
### Is Before
Check if date time is before another date time. See below
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20");
var HaloDateTime2 = HaloDateTime("2021-10-21");
HaloDateTime1.isBefore(HaloDateTime2); // true
```

You can also check in terms of units of measurement. The below example checks if year is before.
```dart
var HaloDateTime1 = HaloDateTime([2020, 10, 20]);

var HaloDateTime2 = HaloDateTime("2020-12-31", "yyyy-MM-dd");
var HaloDateTime3 = HaloDateTime("2021-01-01", "yyyy-MM-dd");

HaloDateTime1.isBefore(HaloDateTime2, Units.YEAR); // false
HaloDateTime1.isBefore(HaloDateTime3, Units.YEAR); // true
```

### Is Same
Check if date time is same with another date time. See below
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20", "yyyy-MM-dd");
var HaloDateTime2 = HaloDateTime("2021-10-20", "yyyy-MM-dd");
HaloDateTime1.isSame(HaloDateTime2); // true
```

You can also check in terms of units of measurement. The below example checks if years are the same.
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20", "yyyy-MM-dd");

var HaloDateTime2 = HaloDateTime("2020-12-31", "yyyy-MM-dd");
var HaloDateTime3 = HaloDateTime("2021-01-01", "yyyy-MM-dd");

HaloDateTime1.isSame(HaloDateTime2, Units.YEAR); // false
HaloDateTime1.isSame(HaloDateTime3, Units.YEAR); // true
```

### Is After
Check if date time is after another date time. See below
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20", "yyyy-MM-dd");
var HaloDateTime2 = HaloDateTime("2021-10-19", "yyyy-MM-dd");
HaloDateTime1.isAfter(HaloDateTime2); // true
```

You can also check in terms of units of measurement. The below example checks if year is after.
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20", "yyyy-MM-dd");

var HaloDateTime2 = HaloDateTime("2021-01-01", "yyyy-MM-dd");
var HaloDateTime3 = HaloDateTime("2020-12-31", "yyyy-MM-dd");

HaloDateTime1.isAfter(HaloDateTime2, Units.YEAR); // false
HaloDateTime1.isAfter(HaloDateTime3, Units.YEAR); // true
```

### Is Same or Before
Check if date time is same or before with another date time. See below
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20", "yyyy-MM-dd");

var HaloDateTime2 = HaloDateTime("2020-12-31", "yyyy-MM-dd");
var HaloDateTime3 = HaloDateTime("2021-12-31", "yyyy-MM-dd");
var HaloDateTime4 = HaloDateTime("2022-01-01", "yyyy-MM-dd");

HaloDateTime1.isSameOrBefore(HaloDateTime2, Units.YEAR); // false
HaloDateTime1.isSameOrBefore(HaloDateTime3, Units.YEAR); // true
HaloDateTime1.isSameOrBefore(HaloDateTime4, Units.YEAR); // true
```
### Is Same or After
Check if date time is same or after with another date time. See below
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20", "yyyy-MM-dd");

var HaloDateTime2 = HaloDateTime("2022-12-31", "yyyy-MM-dd");
var HaloDateTime3 = HaloDateTime("2021-01-01", "yyyy-MM-dd");
var HaloDateTime4 = HaloDateTime("2020-12-31", "yyyy-MM-dd");

HaloDateTime1.isSameOrAfter(HaloDateTime2, Units.YEAR); // false
HaloDateTime1.isSameOrAfter(HaloDateTime3, Units.YEAR); // true
HaloDateTime1.isSameOrAfter(HaloDateTime4, Units.YEAR); // true
```

### Is Between
Check if a date time is between two date times. See below
```dart
var HaloDateTime1 = HaloDateTime("2021-10-20", "yyyy-MM-dd");

var HaloDateTime2 = HaloDateTime("2021-01-01", "yyyy-MM-dd");
var HaloDateTime3 = HaloDateTime("2023-01-01", "yyyy-MM-dd");

var HaloDateTime4 = HaloDateTime("2020-12-31", "yyyy-MM-dd");
var HaloDateTime5 = HaloDateTime("2023-01-01", "yyyy-MM-dd");

HaloDateTime1.isBetween(HaloDateTime2, HaloDateTime3, Units.YEAR); // false
HaloDateTime1.isBetween(HaloDateTime4, HaloDateTime5, Units.YEAR); // true
```

### Is LeapYear
Check if date time is a leap year or not. See below
```dart
HaloDateTime("2019", "yyyy").isLeapYear; // false
HaloDateTime("2016", "yyyy").isLeapYear; // true
```

### Is HaloDateTime
Check if it is a HaloDateTime instance. See below
```dart
HaloDateTime.isHaloDateTime("string"); // false
HaloDateTime.isHaloDateTime(HaloDateTime()); // true
HaloDateTime.isHaloDateTime(DateTime.now()); // false
```

### Is DateTime
Check if it is a dart DateTime instance. See below
```dart
HaloDateTime.isDateTime("string"); // false
HaloDateTime.isDateTime(DateTime.now()); // true
HaloDateTime.isDateTime(HaloDateTime()); // false
```

# Locale Support

```dart
await HaloDateTime.locale("fr");
HaloDateTime().yMMMMEEEEdjm; // samedi 19 octobre 2019 19:25
```

Below are the locales that are supported in HaloDateTime. More will be added

| Key  | Locale |
| ------------- | ------------- |
| English  | en / en_sg / en_au / en_ca / en_gb / en_ie / en_il / en_nz |
| Spanish  | es / es_do / es_us |
| Chinese  | zh / zh_cn / zh_hk / zh_tw |
| Japanese  | ja |
| German  | de / de_at / de_ch |
| French  | fr / fr_ch / fr_ca |
| Indonesian  | id |
| Italian  | it / it_ch |
| Korean  | ko |
| Russian  | ru |
| Ukrainian  | uk |
| Hindi  | hi |
| Arabic  | ar / ar_ly / ar_dz / ar_kw / ar_sa / ar_ma / ar_tn |
| Portuguese  | pt / pt_br |
| Polish  | pl |
| Turkish  | tr |
| Swedish | sv |
| Norwegian | nb |
| Persian | fa |
| Azerbaijani | az |
| Dutch | nl |
| Thailand | th |

Getting and setting locales in HaloDateTime **_always returns a future_**

```dart
// Get the locale (By default, the locale is "en")
await HaloDateTime.locale(); // en

// To set locale
await HaloDateTime.locale("fr");
HaloDateTime().yMMMMEEEEdjm; // samedi 19 octobre 2019 19:25

await HaloDateTime.locale("ar");
HaloDateTime().yMMMMEEEEdjm; // السبت، ١٩ أكتوبر ٢٠١٩ ٧:٢٧ م

await HaloDateTime.locale("zh-cn");
HaloDateTime().yMMMMEEEEdjm; // 2019年10月19日星期六 下午7:28
```

### Get all available locales

To get all available locales in HaloDateTime run the following

```dart
HaloDateTime.getAllAvailableLocales() // returns all locales
```
1