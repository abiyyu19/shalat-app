import 'package:dio/dio.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

sealed class ScheduleRemote {
  Future<Result<DailyScheduleDto>> getDailySchedule({
    required final int cityId,
    required final String date, // yyyy-mm-dd (2025-12-05)
  });
  Future<Result<MonthlyScheduleDto>> getMonthlySchedule({
    required final int cityId,
    required final int year, // yyyy
    required final int month, // mm
  });
}

class ScheduleRemoteImpl implements ScheduleRemote {
  const ScheduleRemoteImpl({
    required final Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  static const String baseScheduleEndpoint = '/sholat/jadwal';

  @override
  Future<Result<DailyScheduleDto>> getDailySchedule({
    required final int cityId,
    required final String date, // yyyy-mm-dd (2025-12-05)
  }) async {
    try {
      final Response res = await _dio.get(
        '$baseScheduleEndpoint/$cityId/$date',
      );

      if (res.data == null || res.statusCode == null) {
        return Result.error(
          DioException(
            requestOptions: RequestOptions(),
            error: 'Schedule response data or status code is null',
          ),
        );
      }

      final DailyScheduleDto city = DailyScheduleDto.fromJson(
        res.data['data'] as JSON,
      );
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
          error: 'Parsing error when getting daily schedule: $e',
        ),
      );
    }
  }

  @override
  Future<Result<MonthlyScheduleDto>> getMonthlySchedule({
    required final int cityId,
    required final int year, // yyyy
    required final int month, // mm
  }) async {
    try {
      final Response res = await _dio.get(
        '$baseScheduleEndpoint/$cityId/$year/$month',
      );

      if (res.data == null || res.statusCode == null) {
        return Result.error(
          DioException(
            requestOptions: RequestOptions(),
            error: 'Monthly schedule response data or status code is null',
          ),
        );
      }

      final MonthlyScheduleDto schedule = MonthlyScheduleDto.fromJson(
        res.data['data'] as JSON,
      );
      return Result.ok(schedule);
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
          error: 'Parsing error when getting monthly schedule: $e',
        ),
      );
    }
  }
}
