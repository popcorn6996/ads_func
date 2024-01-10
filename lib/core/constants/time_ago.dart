// Override "en" locale messages with custom messages that are more precise and short
import 'package:timeago/timeago.dart';

class MyCustomMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'Just now';
  @override
  String aboutAMinute(int minutes) => '$minutes minutes ago';
  @override
  String minutes(int minutes) => '$minutes minutes ago';
  @override
  String aboutAnHour(int minutes) => '$minutes minutes ago';
  @override
  String hours(int hours) => '$hours hours ago';
  @override
  String aDay(int hours) => '$hours hours ago';
  @override
  String days(int days) => '$days days ago';
  @override
  String aboutAMonth(int days) => '$days days ago';
  @override
  String months(int months) => '$months months ago';
  @override
  String aboutAYear(int year) => '$year years ago';
  @override
  String years(int years) => '$years years ago';
  @override
  String wordSeparator() => ' ';
}
