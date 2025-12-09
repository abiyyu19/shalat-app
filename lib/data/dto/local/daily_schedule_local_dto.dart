import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/domain.dart';

part 'daily_schedule_local_dto.freezed.dart';

@freezed
sealed class DailyScheduleLocalDto with _$DailyScheduleLocalDto {
  const factory DailyScheduleLocalDto({
    final int? localId, // id dari ScheduleEntity (boleh dipakai / diabaikan)
    required final CityLocalDto city,

    required final DateTime date, // 2025-12-04
    required final String parsedDate, // "Kamis, 04/12/2025"

    required final String imsak,
    required final String subuh,
    required final String terbit,
    required final String dhuha,
    required final String dzuhur,
    required final String ashar,
    required final String maghrib,
    required final String isya,
  }) = _DailyScheduleLocalDto;
}

extension DailyScheduleLocalDtoX on DailyScheduleLocalDto {
  DailyScheduleModel get toDailyScheduleModel => DailyScheduleModel(
    city: city.toCityModel,
    date: date,
    formattedDate: parsedDate,
    imsak: imsak,
    subuh: subuh,
    terbit: terbit,
    dhuha: dhuha,
    dzuhur: dzuhur,
    ashar: ashar,
    maghrib: maghrib,
    isya: isya,
  );
}
