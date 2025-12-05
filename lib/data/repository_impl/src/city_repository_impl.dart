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
    final Result<List<CityModel>> localRes = await _cityLocal.getAllCity();

    // --------------------------------------------------
    // FAILED FLOW: Local storage fetch failed
    // → Fallback to remote
    // --------------------------------------------------
    if (localRes is Error<List<CityModel>>) {
      return _refreshCitiesFromRemote();
    }

    // --------------------------------------------------
    // SUCCESS FLOW: Successfully retrieved data from local
    // --------------------------------------------------

    final List<CityModel> localCities = (localRes as Ok<List<CityModel>>).value;

    // -----------------------------
    // CASE: Local data is non-empty
    // -----------------------------
    if (localCities.isNotEmpty) {
      // Refresh the remote data in the background (fire & forget)
      // We intentionally do not await the result here
      unawaited(_refreshCitiesFromRemote());

      // Immediately return the non-empty local data
      return Result.ok(localCities);
    }

    // ---------------------------------------------
    // CASE: Local data is empty
    // → Fetch the latest data from remote
    // ---------------------------------------------
    return _refreshCitiesFromRemote();
  }

  /// Helper method for fetching city data from the remote API and updating local storage.
  ///
  /// Behavior:
  /// - Remote error    → return `Result.error(...)`
  /// - Remote success:
  ///     • empty list  → return the empty data as-is
  ///     • non-empty   → save to local storage asynchronously, then return the data
  Future<Result<List<CityModel>>> _refreshCitiesFromRemote() async {
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
    final List<CityModel> citiesModel = CityMapper.dtoToModelBatch(citiesDto);

    // Save data to local storage only when the list is not empty
    if (citiesDto.isNotEmpty) {
      unawaited(_cityLocal.insertCityBatch(cities: citiesModel));
    }

    // Return the data (empty or not)
    return Result.ok(citiesModel);
  }

  @override
  Future<Result<List<CityModel>>> searchCityByQuery({
    required String query,
  }) async {
    final Result<List<CityModel>> localRes = await _cityLocal.searchCityByQuery(
      query: query,
    );

    // Local search failed → fallback to remote
    if (localRes is Error<List<CityModel>>) {
      return _searchFromRemote(query);
    }

    final List<CityModel> localCities = (localRes as Ok<List<CityModel>>).value;

    // Local contains results → return immediately and refresh remote async
    if (localCities.isNotEmpty) {
      unawaited(_searchFromRemote(query));
      return Result.ok(localCities);
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

    final citiesDto = (remoteRes as Ok<List<CityDto>>).value;
    final citiesModel = CityMapper.dtoToModelBatch(citiesDto);

    // Save to local only if remote returns data
    if (citiesModel.isNotEmpty) {
      unawaited(_cityLocal.insertCityBatch(cities: citiesModel));
    }

    return Result.ok(citiesModel);
  }

  @override
  Future<Result<CityModel?>> getCityById({required int cityId}) async {
    final Result<CityModel?> localRes = await _cityLocal.getCityById(
      cityId: cityId,
    );

    // Local failed → fallback to remote
    if (localRes is Error<CityModel?>) {
      return _getCityByIdFromRemote(cityId);
    }

    final CityModel? localCity = (localRes as Ok<CityModel?>).value;

    // Local found the data → return fast, refresh in background
    if (localCity != null) {
      unawaited(_getCityByIdFromRemote(cityId));
      return Result.ok(localCity);
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
    final CityModel model = CityMapper.dtoToModel(dto);
    unawaited(_cityLocal.insertCity(city: model));
    return Result.ok(model);
  }
}
