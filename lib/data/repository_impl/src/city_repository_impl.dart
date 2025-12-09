import 'dart:async';

import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/domain.dart';

class CityRepositoryImpl implements CityRepository {
  CityRepositoryImpl({
    required final CityLocal cityLocal,
    required final CityRemote cityRemote,
  }) : _cityLocal = cityLocal,
       _cityRemote = cityRemote;

  final CityLocal _cityLocal;
  final CityRemote _cityRemote;

  @override
  Future<Result<List<CityModel>>> getAllCity() async {
    final Result<List<CityLocalDto>> localRes = await _cityLocal.getAllCity();

    // --------------------------------------------------
    // FAILED FLOW: Local storage fetch failed
    // → Fallback to remote
    // --------------------------------------------------
    if (localRes is Error<List<CityLocalDto>>) {
      return _refreshCitiesFromRemote();
    }

    // --------------------------------------------------
    // SUCCESS FLOW: Successfully retrieved data from local
    // --------------------------------------------------

    final List<CityLocalDto> localCitiesDto =
        (localRes as Ok<List<CityLocalDto>>).value;

    // -----------------------------
    // CASE: Local data is non-empty
    // -----------------------------
    if (localCitiesDto.isNotEmpty) {
      // Refresh the remote data in the background (fire & forget)
      // We intentionally do not await the result here
      Helper.fireAndForgetWithLog(
        _refreshCitiesFromRemote(),
        operation: 'Refresh cities from remote',
      );

      try {
        // Immediately return the non-empty local data
        final List<CityModel> localCities = localCitiesDto
            .map((cityDto) => cityDto.toCityModel)
            .toList();
        return Result.ok(localCities);
      } catch (e) {
        return Result.error(Exception(e));
      }
    }

    // ---------------------------------------------
    // CASE: Local data is empty
    // → Fetch the latest data from remote
    // ---------------------------------------------
    return _refreshCitiesFromRemote(isLocalEmpty: true);
  }

  /// Helper method for fetching city data from the remote API and updating local storage.
  ///
  /// Behavior:
  /// - Remote error    → return `Result.error(...)`
  /// - Remote success:
  ///     • empty list  → return the empty data as-is
  ///     • non-empty   → save to local storage asynchronously, then return the data
  Future<Result<List<CityModel>>> _refreshCitiesFromRemote({
    final bool isLocalEmpty = false,
  }) async {
    final Result<List<CityDto>> remoteRes = await _cityRemote.getAllCity();

    // -----------------------------
    // Remote request failed
    // → Propagate the error upward
    // -----------------------------
    if (remoteRes is Error<List<CityDto>>) {
      return Result.error(remoteRes.error);
    }

    // -----------------------------
    // Remote request succeeded
    // -----------------------------
    final List<CityDto> citiesDto = (remoteRes as Ok<List<CityDto>>).value;

    try {
      final List<CityLocalDto> citiesLocalDto = citiesDto
          .map((city) => city.toCityLocalDto)
          .toList();

      // Save data to local storage only when the list is not empty
      if (citiesDto.isNotEmpty) {
        if (isLocalEmpty) {
          Helper.fireAndForgetWithLog(
            _cityLocal.insertCityBatch(cities: citiesLocalDto),
            operation: 'Insert cities to local storage',
          );
        } else {
          Helper.fireAndForgetWithLog(
            _cityLocal.replaceCityBatch(cities: citiesLocalDto),
            operation: 'Replace cities in local storage',
          );
        }
      }

      final List<CityModel> citiesModel = citiesLocalDto
          .map((city) => city.toCityModel)
          .toList();

      // Return the data (empty or not)
      return Result.ok(citiesModel);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<List<CityModel>>> searchCityByQuery({
    required String query,
  }) async {
    final Result<List<CityLocalDto>> localRes = await _cityLocal
        .searchCityByQuery(
          query: query,
        );

    // Local search failed → fallback to remote
    if (localRes is Error<List<CityLocalDto>>) {
      return _searchFromRemote(query);
    }

    final List<CityLocalDto> localCitiesDto =
        (localRes as Ok<List<CityLocalDto>>).value;

    // -----------------------------
    // CASE: Local data is non-empty
    // -----------------------------
    if (localCitiesDto.isNotEmpty) {
      // Refresh the remote data in the background (fire & forget)
      // We intentionally do not await the result here
      Helper.fireAndForgetWithLog(
        _searchFromRemote(query),
        operation: 'Search cities from remote',
      );

      try {
        final List<CityModel> localCities = localCitiesDto
            .map((city) => city.toCityModel)
            .toList();

        // Local contains results
        // → return immediately and refresh remote async
        return Result.ok(localCities);
      } catch (e) {
        return Result.error(Exception(e));
      }
    }

    // Local empty → try remote
    return _searchFromRemote(query);
  }

  Future<Result<List<CityModel>>> _searchFromRemote(String query) async {
    final Result<List<CityDto>> remoteRes = await _cityRemote
        .searchCitiesByQuery(query: query);

    if (remoteRes is Error<List<CityDto>>) {
      return Result.error(remoteRes.error);
    }

    final List<CityDto> citiesDto = (remoteRes as Ok<List<CityDto>>).value;

    try {
      final List<CityLocalDto> citiesLocalDto = citiesDto
          .map((city) => city.toCityLocalDto)
          .toList();

      // Save to local only if remote returns data
      if (citiesLocalDto.isNotEmpty) {
        Helper.fireAndForgetWithLog(
          _cityLocal.insertCityBatch(cities: citiesLocalDto),
          operation: 'Insert cities to local storage',
        );
      }

      final List<CityModel> citiesModel = citiesLocalDto
          .map((city) => city.toCityModel)
          .toList();

      return Result.ok(citiesModel);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<CityModel?>> getCityById({required int cityId}) async {
    final Result<CityLocalDto?> localRes = await _cityLocal.getCityById(
      cityId: cityId,
    );

    // Local failed → fallback to remote
    if (localRes is Error<CityLocalDto?>) {
      return _getCityByIdFromRemote(cityId);
    }

    final CityLocalDto? localCity = (localRes as Ok<CityLocalDto?>).value;

    // Local found the data → return fast, refresh in background
    if (localCity != null) {
      Helper.fireAndForgetWithLog(
        _getCityByIdFromRemote(cityId),
        operation: 'Get city by id from remote',
      );

      try {
        final CityModel model = localCity.toCityModel;
        return Result.ok(model);
      } catch (e) {
        return Result.error(Exception(e));
      }
    }

    // Local returned null → try remote
    return _getCityByIdFromRemote(cityId);
  }

  Future<Result<CityModel?>> _getCityByIdFromRemote(int cityId) async {
    final Result<CityDto?> remoteRes = await _cityRemote.getCityById(
      cityId: cityId.toString(),
    );

    if (remoteRes is Error<CityDto?>) {
      return Result.error(remoteRes.error);
    }

    final CityDto? dto = (remoteRes as Ok<CityDto?>).value;

    // Remote also returns null → city doesn't exist
    if (dto == null) {
      return Result.ok(null);
    }

    // Convert & save to local

    try {
      final CityLocalDto localDto = dto.toCityLocalDto;
      Helper.fireAndForgetWithLog(
        _cityLocal.insertCity(city: localDto),
        operation: 'Insert city to local storage',
      );

      final CityModel model = localDto.toCityModel;
      return Result.ok(model);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
