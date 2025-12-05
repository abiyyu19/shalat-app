import 'package:dio/dio.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

sealed class LocationRemote {
  Future<Result<List<CityDto>>> getAllCity();
  Future<Result<List<CityDto>>> searchCities({required final String query});
  Future<Result<CityDto>> getCityById({required final String cityId});
}

class LocationRemoteImpl implements LocationRemote {
  const LocationRemoteImpl({
    required final Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  static final String baseCityEndpoint = '/sholat/kota';
  static final String allCityEndpoint = '$baseCityEndpoint/semua';
  static final String searchCityEndpoint = '$baseCityEndpoint/cari';

  @override
  Future<Result<List<CityDto>>> getAllCity() async {
    try {
      final Response res = await _dio.get(allCityEndpoint);

      if (res.data == null || res.statusCode == null) {
        return Result.error(
          DioException(
            requestOptions: RequestOptions(),
            error: 'All city response data or status code is null',
          ),
        );
      }

      // final baseResponseDto = BaseResponseDto<List<CityDto>>.fromJson(
      //   res.data,
      //   (Object? json) => (json as List<dynamic>)
      //       .map((final e) => CityDto.fromJson(e as JSON))
      //       .toList(),
      // );

      final List<CityDto> cities = (res.data['data'] as List<dynamic>)
          .map((final e) => CityDto.fromJson(e as JSON))
          .toList();

      return Result.ok(cities);
    } on DioException catch (e) {
      return Result.error(
        DioException(
          requestOptions: e.requestOptions,
          response: e.response,
          type: e.type,
        ),
      );
    } catch (e) {
      return Result.error(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Parsing error when getting all city: $e',
        ),
      );
    }
  }

  @override
  Future<Result<CityDto>> getCityById({required final String cityId}) async {
    try {
      final Response res = await _dio.get('$baseCityEndpoint/$cityId');

      if (res.data == null || res.statusCode == null) {
        return Result.error(
          DioException(
            requestOptions: RequestOptions(),
            error: 'City response data or status code is null',
          ),
        );
      }

      final CityDto city = CityDto.fromJson(res.data['data'] as JSON);
      return Result.ok(city);
    } on DioException catch (e) {
      return Result.error(
        DioException(
          requestOptions: e.requestOptions,
          response: e.response,
          type: e.type,
        ),
      );
    } catch (e) {
      return Result.error(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Parsing error when getting city by id: $e',
        ),
      );
    }
  }

  @override
  Future<Result<List<CityDto>>> searchCities({
    required final String query,
  }) async {
    try {
      final Response res = await _dio.get('$searchCityEndpoint/$query');

      if (res.data == null || res.statusCode == null) {
        return Result.error(
          DioException(
            requestOptions: RequestOptions(),
            error: 'Cities response data or status code is null',
          ),
        );
      }

      final List<CityDto> cities = (res.data['data'] as List<dynamic>)
          .map((final e) => CityDto.fromJson(e as JSON))
          .toList();

      return Result.ok(cities);
    } on DioException catch (e) {
      return Result.error(
        DioException(
          requestOptions: e.requestOptions,
          response: e.response,
          type: e.type,
        ),
      );
    } catch (e) {
      return Result.error(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Parsing error when searching cities: $e',
        ),
      );
    }
  }
}
