import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/domain/domain.dart';

abstract interface class ScheduleLocal {
  Future<Result<DailyScheduleModel>> getDailySchedule({
    required final int cityId,
    required final String date,
  });
  Future<Result<MonthlyScheduleModel>> getMonthlySchedule({
    required final int cityId,
    required final String year,
    required final String month,
  });

  Future<Result<void>> insertDailySchedule({
    required final DailyScheduleModel schedule,
  });

  Future<Result<void>> insertMonthlySchedule({
    required final MonthlyScheduleModel schedule,
  });

  Future<Result<void>> updateDailySchedule({
    required final DailyScheduleModel schedule,
  });

  Future<Result<void>> updateMonthlySchedule({
    required final MonthlyScheduleModel schedule,
  });

  Future<Result<void>> deleteDailySchedule({
    required final int cityId,
    required final String date,
  });

  Future<Result<void>> deleteMonthlySchedule({
    required final int cityId,
    required final String year,
    required final String month,
  });
}
