import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/domain/domain.dart';

part 'monthly_schedule_model.freezed.dart';

@freezed
sealed class MonthlyScheduleModel with _$MonthlyScheduleModel {
  const factory MonthlyScheduleModel({
    required final CityModel city,
    required final int year,
    required final int month, // 1-12
    required final List<DailyScheduleModel> days,
  }) = _MonthlyScheduleModel;
}
