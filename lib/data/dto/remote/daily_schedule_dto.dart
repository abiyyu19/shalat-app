import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

part 'daily_schedule_dto.freezed.dart';
part 'daily_schedule_dto.g.dart';

@freezed
sealed class DailyScheduleDto with _$DailyScheduleDto {
  const factory DailyScheduleDto({
    required final int id, // city id
    required final String lokasi,
    required final String daerah,
    required final ScheduleDto jadwal,
  }) = _DailyScheduleDto;

  factory DailyScheduleDto.fromJson(final JSON json) =>
      _$DailyScheduleDtoFromJson(json);
}

// "data": {
//     "id": 1221,
//     "lokasi": "KOTA BEKASI",
//     "daerah": "JAWA BARAT",
//     "jadwal": {
//         "tanggal": "Selasa, 02/12/2025",
//         "imsak": "03:56",
//         "subuh": "04:06",
//         "terbit": "05:24",
//         "dhuha": "05:53",
//         "dzuhur": "11:45",
//         "ashar": "15:10",
//         "maghrib": "17:58",
//         "isya": "19:13",
//         "date": "2025-12-02"
//     }
// }

extension DailyScheduleDtoX on DailyScheduleDto {
  DailyScheduleLocalDto get toDailyScheduleLocalDto => DailyScheduleLocalDto(
    city: CityLocalDto(
      id: id,
      name: lokasi,
      region: daerah,
    ),
    date: jadwal.date,
    parsedDate: jadwal.tanggal,
    imsak: jadwal.imsak,
    subuh: jadwal.subuh,
    terbit: jadwal.terbit,
    dhuha: jadwal.dhuha,
    dzuhur: jadwal.dzuhur,
    ashar: jadwal.ashar,
    maghrib: jadwal.maghrib,
    isya: jadwal.isya,
  );
}
