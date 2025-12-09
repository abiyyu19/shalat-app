extension DateTimeExtension on DateTime {
  DateTime get threeMonthsCutoff => DateTime(year, month - 2, 1);

  // Output: YYYY-MM-DD
  String get toFormattedDate =>
      "${year.toString().padLeft(4, '0')}"
      "-${month.toString().padLeft(2, '0')}"
      "-${day.toString().padLeft(2, '0')}";
}
