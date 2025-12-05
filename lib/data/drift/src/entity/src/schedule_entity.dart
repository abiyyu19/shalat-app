import 'package:drift/drift.dart';
import 'package:shalat_app/data/data.dart';

class ScheduleEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get locationId => integer().references(CityEntity, #id)();

  TextColumn get date => text()(); // 2025-12-04
  TextColumn get parsedDate => text()(); // Kamis, 04/12/2025

  TextColumn get imsak => text()();
  TextColumn get subuh => text()();
  TextColumn get terbit => text()();
  TextColumn get dhuha => text()();
  TextColumn get dzuhur => text()();
  TextColumn get ashar => text()();
  TextColumn get maghrib => text()();
  TextColumn get isya => text()();
}
