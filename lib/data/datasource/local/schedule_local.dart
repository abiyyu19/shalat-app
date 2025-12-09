import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

abstract interface class ScheduleLocal {
  //--- Daily
  Future<Result<DailyScheduleLocalDto>> getDailySchedule({
    required final int cityId,
    required final DateTime date,
  });
  Future<Result<void>> insertDailySchedule({
    required final DailyScheduleLocalDto schedule,
  });
  Future<Result<void>> updateDailySchedule({
    required final DailyScheduleLocalDto schedule,
  });
  Future<Result<void>> deleteDailySchedule({
    required final int cityId,
    required final DateTime date,
  });

  Future<Result<MonthlyScheduleLocalDto>> getMonthlySchedule({
    required final int cityId,
    required final int year,
    required final int month,
  });
  Future<Result<void>> insertMonthlySchedule({
    required final MonthlyScheduleLocalDto schedule,
  });
  Future<Result<void>> updateMonthlySchedule({
    required final MonthlyScheduleLocalDto schedule,
  });
  Future<Result<void>> replaceMonthlySchedule({
    required final MonthlyScheduleLocalDto schedule,
  });
  Future<Result<void>> deleteMonthlySchedule({
    required final int cityId,
    required final int year,
    required final int month,
  });

  Future<Result<void>> deleteOlderThanLastThreeMonths();
}
