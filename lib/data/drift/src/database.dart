import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shalat_app/data/data.dart';

part 'database.g.dart';

@DriftDatabase(tables: [CityEntity, ScheduleEntity])
class AppDatabase extends _$AppDatabase {
  AppDatabase([final QueryExecutor? executor])
    : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() => driftDatabase(
    name: 'shalat_db',
    native: const DriftNativeOptions(
      // By default, `driftDatabase` from `package:drift_flutter` stores the
      // database files in `getApplicationDocumentsDirectory()`.
      databaseDirectory: getApplicationSupportDirectory,
    ),
    // If you need web support, see https://drift.simonbinder.eu/platforms/web/
  );
}
