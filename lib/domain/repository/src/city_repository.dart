import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/domain/domain.dart';

abstract interface class CityRepository {
  Future<Result<List<CityModel>>> getAllCity();
  Future<Result<List<CityModel>>> searchCityByQuery({
    required final String query,
  });
  Future<Result<CityModel?>> getCityById({required final int cityId});
}
