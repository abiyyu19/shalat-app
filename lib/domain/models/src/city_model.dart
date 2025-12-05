import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';

@freezed
sealed class CityModel with _$CityModel {
  const factory CityModel({
    required final int id,
    required final String name,
  }) = _CityModel;
}
