import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

part 'monthly_schedule_dto.freezed.dart';
part 'monthly_schedule_dto.g.dart';

@freezed
sealed class MonthlyScheduleDto with _$MonthlyScheduleDto {
  const factory MonthlyScheduleDto({
    required final int id, // city id
    required final String lokasi,
    required final String daerah,
    required final List<ScheduleDto> jadwal,
  }) = _MonthlyScheduleDto;

  factory MonthlyScheduleDto.fromJson(final JSON json) =>
      _$MonthlyScheduleDtoFromJson(json);
}

// {
//     "status": true,
//     "request": {
//         "path": "/sholat/jadwal/1221/2025/12"
//     },
//     "data": {
//         "id": 1221,
//         "lokasi": "KOTA BEKASI",
//         "daerah": "JAWA BARAT",
//         "jadwal": [
//             {
//                 "tanggal": "Senin, 01/12/2025",
//                 "imsak": "03:55",
//                 "subuh": "04:05",
//                 "terbit": "05:24",
//                 "dhuha": "05:53",
//                 "dzuhur": "11:44",
//                 "ashar": "15:09",
//                 "maghrib": "17:58",
//                 "isya": "19:13",
//                 "date": "2025-12-01"
//             },
//             {
//                 "tanggal": "Selasa, 02/12/2025",
//                 "imsak": "03:56",
//                 "subuh": "04:06",
//                 "terbit": "05:24",
//                 "dhuha": "05:53",
//                 "dzuhur": "11:45",
//                 "ashar": "15:10",
//                 "maghrib": "17:58",
//                 "isya": "19:13",
//                 "date": "2025-12-02"
//             },
//         ]
//     }
//

extension MonthlyScheduleDtoX on MonthlyScheduleDto {
  MonthlyScheduleLocalDto get toMonthlyScheduleLocalDto {
    final city = CityLocalDto(
      id: id,
      name: lokasi,
      region: daerah,
    );
    final year = jadwal.first.date.year;
    final month = jadwal.first.date.month;
    final days = jadwal
        .map(
          (e) => DailyScheduleLocalDto(
            city: city,
            date: e.date,
            parsedDate: e.tanggal,
            imsak: e.imsak,
            subuh: e.subuh,
            terbit: e.terbit,
            dhuha: e.dhuha,
            dzuhur: e.dzuhur,
            ashar: e.ashar,
            maghrib: e.maghrib,
            isya: e.isya,
          ),
        )
        .toList();

    return MonthlyScheduleLocalDto(
      city: city,
      year: year,
      month: month,
      days: days,
    );
  }
}
