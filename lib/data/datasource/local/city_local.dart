import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/domain/domain.dart';

abstract interface class CityLocal {
  Future<Result<List<CityModel>>> getAllCity();
  Future<Result<CityModel>> getCityById({required final int cityId});
  Future<Result<List<CityModel>>> searchCityByQuery({
    required final String query,
  });

  Future<Result<void>> insertCity({required final CityModel city});
  Future<Result<void>> insertCityBatch({required final List<CityModel> cities});
  Future<Result<void>> updateCity({required final CityModel city});

  Future<Result<void>> deleteCity({required final CityModel city});
  Future<Result<void>> deleteAllCity();
}
