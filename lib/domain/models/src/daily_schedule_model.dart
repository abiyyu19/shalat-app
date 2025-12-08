import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/domain/domain.dart';

part 'daily_schedule_model.freezed.dart';

@freezed
sealed class DailyScheduleModel with _$DailyScheduleModel {
  const factory DailyScheduleModel({
    required final CityModel city,

    required final DateTime date, // 2025-12-04

    required final String formattedDate, // "Kamis, 04/12/2025"

    required final String imsak,
    required final String subuh,
    required final String terbit,
    required final String dhuha,
    required final String dzuhur,
    required final String ashar,
    required final String maghrib,
    required final String isya,
  }) = _DailyScheduleModel;
}
