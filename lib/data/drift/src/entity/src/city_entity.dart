import 'package:drift/drift.dart';

class CityEntity extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get region => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
