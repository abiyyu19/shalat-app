import 'package:drift/drift.dart';

mixin TableMixin on Table {
  // Primary key column
  late final id = integer().autoIncrement()();

  // Column for created at timestamp
  late final createdAt = dateTime().withDefault(currentDateAndTime)();

  // Column for updated at timestamp
  late final updatedAt = dateTime().withDefault(currentDateAndTime)();
}
