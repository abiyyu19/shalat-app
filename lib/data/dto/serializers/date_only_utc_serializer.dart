import 'package:json_annotation/json_annotation.dart';

class DateOnlyUtcSerializer implements JsonConverter<DateTime, String> {
  const DateOnlyUtcSerializer();

  @override
  DateTime fromJson(final String json) {
    // Input: "2025-12-02"
    final List<String> parts = json.split('-'); // ["2025","12","02"]

    final int year = int.parse(parts[0]);
    final int month = int.parse(parts[1]);
    final int day = int.parse(parts[2]);

    return DateTime.utc(year, month, day);
  }

  @override
  // Output back to "YYYY-MM-DD"
  String toJson(final DateTime date) =>
      "${date.year.toString().padLeft(4, '0')}"
      "-${date.month.toString().padLeft(2, '0')}"
      "-${date.day.toString().padLeft(2, '0')}";
}
