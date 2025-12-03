import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
sealed class CityDto with _$CityDto {
  const factory CityDto({
    required final String id,
    required final String lokasi,
  }) = _CityDto;

  factory CityDto.fromJson(final JSON json) => _$CityDtoFromJson(json);
}

// {
//     "id": "1001",
//     "lokasi": "KAB. LAMPUNG TENGAH"
// }
