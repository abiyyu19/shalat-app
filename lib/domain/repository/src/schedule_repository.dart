import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/domain/domain.dart';

abstract interface class ScheduleRepository {
  Future<Result<DailyScheduleModel?>> getDailySchedule({
    required final int cityId,
    required final DateTime date,
  });

  Future<Result<MonthlyScheduleModel>> getMonthlySchedule({
    required final int cityId,
    required final int year,
    required final int month,
  });
}
