import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';

part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
sealed class ScheduleDto with _$ScheduleDto {
  const factory ScheduleDto({
    required final String tanggal,
    required final String imsak,
    required final String subuh,
    required final String terbit,
    required final String dhuha,
    required final String dzuhur,
    required final String ashar,
    required final String maghrib,
    required final String isya,
    required final String date,
  }) = _ScheduleDto;

  factory ScheduleDto.fromJson(final JSON json) => _$ScheduleDtoFromJson(json);
}

// "jadwal": {
//     "tanggal": "Selasa, 02/12/2025",
//     "imsak": "03:56",
//     "subuh": "04:06",
//     "terbit": "05:24",
//     "dhuha": "05:53",
//     "dzuhur": "11:45",
//     "ashar": "15:10",
//     "maghrib": "17:58",
//     "isya": "19:13",
//     "date": "2025-12-02"
// }
