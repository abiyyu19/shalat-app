import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/domain/domain.dart';

part 'city_local_dto.freezed.dart';

@freezed
sealed class CityLocalDto with _$CityLocalDto {
  const factory CityLocalDto({
    required final int id,
    required final String name,
    final String? region,
  }) = _CityLocalDto;
}

extension CityLocalX on CityLocalDto {
  CityModel toCityModel() => CityModel(
    id: id,
    name: name,
    region: region,
  );
}
