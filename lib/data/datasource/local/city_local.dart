import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

abstract interface class CityLocal {
  Future<Result<List<CityLocalDto>>> getAllCity();
  Future<Result<CityLocalDto?>> getCityById({required final int cityId});
  Future<Result<List<CityLocalDto>>> searchCityByQuery({
    required final String query,
  });

  Future<Result<void>> insertCity({required final CityLocalDto city});
  Future<Result<void>> insertCityBatch({
    required final List<CityLocalDto> cities,
  });
  Future<Result<void>> replaceCityBatch({
    required final List<CityLocalDto> cities,
  });
  Future<Result<void>> updateCity({required final CityLocalDto city});

  Future<Result<void>> deleteCity({required final CityLocalDto city});
  Future<Result<void>> deleteAllCity();
}
