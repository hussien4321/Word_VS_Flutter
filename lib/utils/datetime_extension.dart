import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String toFormat(String format) {
    final formatter = DateFormat(format);
    return formatter.format(this);
  }
}
