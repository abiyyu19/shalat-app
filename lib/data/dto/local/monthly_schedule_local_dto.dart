import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/data/data.dart';

part 'monthly_schedule_local_dto.freezed.dart';

@freezed
sealed class MonthlyScheduleDto with _$MonthlyScheduleDto {
  const factory MonthlyScheduleDto({
    required final CityLocalDto city,
    required final int year,
    required final int month, // 1-12
    required final List<DailyScheduleLocalDto> days,
  }) = _MonthlyScheduleDto;
}
