import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/domain.dart';

part 'monthly_schedule_local_dto.freezed.dart';

@freezed
sealed class MonthlyScheduleLocalDto with _$MonthlyScheduleLocalDto {
  const factory MonthlyScheduleLocalDto({
    required final CityLocalDto city,
    required final int year,
    required final int month, // 1-12
    required final List<DailyScheduleLocalDto> days,
  }) = _MonthlyScheduleLocalDto;
}

extension MonthlyScheduleLocalDtoX on MonthlyScheduleLocalDto {
  MonthlyScheduleModel get toMonthlyScheduleModel => MonthlyScheduleModel(
    city: city.toCityModel,
    year: year,
    month: month,
    days: days.map((e) => e.toDailyScheduleModel).toList(),
  );
}
