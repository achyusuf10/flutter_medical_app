import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class TimeConverter implements JsonConverter<DateTime, String> {
  const TimeConverter();

  @override
  DateTime fromJson(String? dateTime) {
    if (dateTime == null || dateTime.isEmpty) return DateTime.now();
    return DateTime.parse(dateTime);
  }

  @override
  String toJson(DateTime date) =>
      DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
}
