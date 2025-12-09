import 'package:drift/drift.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

part 'schedule_dao.g.dart';

@DriftAccessor(tables: [ScheduleEntity, CityEntity])
class ScheduleDao extends DatabaseAccessor<AppDatabase>
    with _$ScheduleDaoMixin
    implements ScheduleLocal {
  ScheduleDao(super.db);

  // ---------------------------------------------------------------------------
  // DAILY
  // ---------------------------------------------------------------------------

  @override
  Future<Result<DailyScheduleLocalDto>> getDailySchedule({
    required int cityId,
    required DateTime date,
  }) async {
    try {
      final query =
          select(scheduleEntity).join([
              innerJoin(
                cityEntity,
                cityEntity.id.equalsExp(scheduleEntity.cityId),
              ),
            ])
            ..where(scheduleEntity.cityId.equals(cityId))
            ..where(scheduleEntity.date.equals(date));

      final row = await query.getSingleOrNull();

      if (row == null) {
        return Result.error(Exception("Schedule not found"));
      }

      final sched = row.readTable(scheduleEntity);
      final city = row.readTable(cityEntity);

      return Result.ok(_entityDataToLocalDto(sched, city));
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> insertDailySchedule({
    required DailyScheduleLocalDto schedule,
  }) async {
    try {
      await into(
        scheduleEntity,
      ).insertOnConflictUpdate(_localDtoToCompanionInsert(schedule));
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> updateDailySchedule({
    required DailyScheduleLocalDto schedule,
  }) async {
    try {
      final query = select(scheduleEntity)
        ..where((s) => s.cityId.equals(schedule.city.id))
        ..where((s) => s.date.equals(schedule.date));

      final sched = await query.getSingleOrNull();

      if (sched == null) {
        return Result.error(Exception("Schedule not found"));
      }

      final data = ScheduleEntityData(
        id: sched.id,
        createdAt: sched.createdAt,
        updatedAt: sched.updatedAt,
        cityId: schedule.city.id,
        date: schedule.date,
        parsedDate: schedule.parsedDate,
        imsak: schedule.imsak,
        subuh: schedule.subuh,
        terbit: schedule.terbit,
        dhuha: schedule.dhuha,
        dzuhur: schedule.dzuhur,
        ashar: schedule.ashar,
        maghrib: schedule.maghrib,
        isya: schedule.isya,
      );
      await update(scheduleEntity).replace(data);
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> deleteDailySchedule({
    required int cityId,
    required DateTime date,
  }) async {
    try {
      final query = delete(scheduleEntity)
        ..where(
          (s) => s.cityId.equals(cityId) & s.date.equals(date),
        );

      final res = await query.go();

      if (res == 0) {
        // Schedule not found
        return Result.error(Exception("Schedule not found"));
      }

      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  // ---------------------------------------------------------------------------
  // MONTHLY
  // ---------------------------------------------------------------------------

  @override
  Future<Result<MonthlyScheduleLocalDto>> getMonthlySchedule({
    required int cityId,
    required int year,
    required int month,
  }) async {
    try {
      final startDate = _firstDayOfMonth(year, month);
      final endDate = _lastDayOfMonth(year, month);

      final query =
          select(scheduleEntity).join([
              innerJoin(
                cityEntity,
                cityEntity.id.equalsExp(scheduleEntity.cityId),
              ),
            ])
            ..where(scheduleEntity.cityId.equals(cityId))
            ..where(scheduleEntity.date.isBetweenValues(startDate, endDate))
            ..orderBy([OrderingTerm.asc(scheduleEntity.date)]);

      final rows = await query.get();

      if (rows.isEmpty) {
        return Result.error(Exception("No monthly data found"));
      }

      final List<DailyScheduleLocalDto> days = rows.map((row) {
        final sched = row.readTable(scheduleEntity);
        final city = row.readTable(cityEntity);

        return _entityDataToLocalDto(sched, city);
      }).toList();

      final cityDto = CityMapper.entityDataToLocalDto(
        rows.first.readTable(cityEntity),
      );

      return Result.ok(
        MonthlyScheduleLocalDto(
          city: cityDto,
          year: year,
          month: month,
          days: days,
        ),
      );
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> insertMonthlySchedule({
    required MonthlyScheduleLocalDto schedule,
  }) async {
    try {
      final companions = schedule.days.map(
        (dailySchedule) => _localDtoToCompanionInsert(dailySchedule),
      );
      await batch(
        (b) => b.insertAllOnConflictUpdate(scheduleEntity, companions),
      );
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> updateMonthlySchedule({
    required MonthlyScheduleLocalDto schedule,
  }) async {
    try {
      for (final daily in schedule.days) {
        await updateDailySchedule(schedule: daily);
      }
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> replaceMonthlySchedule({
    required final MonthlyScheduleLocalDto schedule,
  }) async {
    try {
      final Result<void> deleteRes = await deleteMonthlySchedule(
        cityId: schedule.city.id,
        month: schedule.month,
        year: schedule.year,
      );

      if (deleteRes is Error<void>) {
        return Result.error(deleteRes.error);
      }

      final insertRes = await insertMonthlySchedule(schedule: schedule);
      if (insertRes is Error<void>) {
        return Result.error(insertRes.error);
      }

      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> deleteMonthlySchedule({
    required int cityId,
    required int year,
    required int month,
  }) async {
    try {
      final startDate = _firstDayOfMonth(year, month);
      final endDate = _lastDayOfMonth(year, month);

      await (delete(scheduleEntity)..where(
            (tbl) =>
                tbl.cityId.equals(cityId) &
                tbl.date.isBetweenValues(startDate, endDate),
          ))
          .go();

      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  // ---------------------------------------------------------------------------
  // DELETE OLDER THAN LAST 3 MONTHS
  // ---------------------------------------------------------------------------

  @override
  Future<Result<void>> deleteOlderThanLastThreeMonths() async {
    try {
      final now = DateTime.now();
      // contoh: Des 2025 → cutoff = 1 Okt 2025

      final query = delete(
        scheduleEntity,
      )..where((tbl) => tbl.date.isSmallerThanValue(now.threeMonthsCutoff));

      await query.go();

      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  // ---------------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------------

  DateTime _firstDayOfMonth(int year, int month) => DateTime(year, month, 1);

  DateTime _lastDayOfMonth(int year, int month) =>
      DateTime(year, month + 1, 1).subtract(const Duration(days: 1));

  DailyScheduleLocalDto _entityDataToLocalDto(
    final ScheduleEntityData scheduleEntityData,
    final CityEntityData cityEntityData,
  ) => DailyScheduleLocalDto(
    city: CityLocalDto(
      id: cityEntityData.id,
      name: cityEntityData.name,
      region: cityEntityData.region,
    ),
    date: scheduleEntityData.date,
    parsedDate: scheduleEntityData.parsedDate,
    imsak: scheduleEntityData.imsak,
    subuh: scheduleEntityData.subuh,
    terbit: scheduleEntityData.terbit,
    dhuha: scheduleEntityData.dhuha,
    dzuhur: scheduleEntityData.dzuhur,
    ashar: scheduleEntityData.ashar,
    maghrib: scheduleEntityData.maghrib,
    isya: scheduleEntityData.isya,
  );

  ScheduleEntityCompanion _localDtoToCompanionInsert(
    final DailyScheduleLocalDto schedule,
  ) => ScheduleEntityCompanion.insert(
    cityId: schedule.city.id,
    date: schedule.date,
    parsedDate: schedule.parsedDate,
    imsak: schedule.imsak,
    subuh: schedule.subuh,
    terbit: schedule.terbit,
    dhuha: schedule.dhuha,
    dzuhur: schedule.dzuhur,
    ashar: schedule.ashar,
    maghrib: schedule.maghrib,
    isya: schedule.isya,
  );
}
