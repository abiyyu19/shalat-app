import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/domain/domain.dart';

part 'daily_schedule_model.freezed.dart';

@freezed
sealed class DailyScheduleModel with _$DailyScheduleModel {
  const factory DailyScheduleModel({
    required final CityModel city,
    required final ScheduleModel schedule,
  }) = _DailyScheduleModel;
}
