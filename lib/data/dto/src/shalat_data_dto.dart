import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

part 'shalat_data_dto.freezed.dart';
part 'shalat_data_dto.g.dart';

@freezed
sealed class ShalatDataDto with _$ShalatDataDto {
  const factory ShalatDataDto({
    required final int id,
    required final String lokasi,
    required final String daerah,
    required final ScheduleDto jadwal,
  }) = _ShalatDataDto;

  factory ShalatDataDto.fromJson(final JSON json) =>
      _$ShalatDataDtoFromJson(json);
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
