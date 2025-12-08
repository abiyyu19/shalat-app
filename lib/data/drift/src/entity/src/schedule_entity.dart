import 'package:drift/drift.dart';
import 'package:shalat_app/data/data.dart';

class ScheduleEntity extends Table with TableMixin {
  IntColumn get locationId => integer().references(CityEntity, #id)();

  DateTimeColumn get date => dateTime()(); // 2025-12-04 convert to DateTime
  TextColumn get parsedDate => text()(); // Kamis, 04/12/2025

  TextColumn get imsak => text()();
  TextColumn get subuh => text()();
  TextColumn get terbit => text()();
  TextColumn get dhuha => text()();
  TextColumn get dzuhur => text()();
  TextColumn get ashar => text()();
  TextColumn get maghrib => text()();
  TextColumn get isya => text()();

  @override
  List<Set<Column>> get uniqueKeys => [
    {locationId, date},
  ];
}
