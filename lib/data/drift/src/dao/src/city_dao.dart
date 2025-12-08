import 'package:drift/drift.dart';
import 'package:shalat_app/core/result/result.dart';
import 'package:shalat_app/data/data.dart';

part 'city_dao.g.dart';

@DriftAccessor(tables: [CityEntity])
class CityDao extends DatabaseAccessor<AppDatabase>
    with _$CityDaoMixin
    implements CityLocal {
  // this constructor is required so that the main database can create an instance
  // of this object.
  CityDao(super.db);

  @override
  Future<Result<List<CityLocalDto>>> getAllCity() async {
    try {
      final List<CityEntityData> citiesEntity = await select(cityEntity).get();
      return Result.ok(CityMapper.entityDataToLocalDtoBatch(citiesEntity));
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<CityLocalDto?>> getCityById({required int cityId}) async {
    try {
      final CityEntityData? cityEntityData =
          await (select(
                cityEntity,
              )..where(
                (city) => city.id.equals(cityId),
              ))
              .getSingleOrNull();

      if (cityEntityData == null) {
        return Result.ok(null);
      }

      return Result.ok(CityMapper.entityDataToLocalDto(cityEntityData));
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<List<CityLocalDto>>> searchCityByQuery({
    required String query,
  }) async {
    try {
      final List<CityEntityData> citiesEntity =
          await (select(
                cityEntity,
              )..where(
                (city) => city.name.contains(query),
              ))
              .get();
      return Result.ok(CityMapper.entityDataToLocalDtoBatch(citiesEntity));
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> insertCityBatch({
    required List<CityLocalDto> cities,
  }) async {
    try {
      final cityCompanionInsertBatch =
          CityMapper.localDtoToCompanionInsertBatch(
            cities,
          );
      await batch(
        (batch) => batch.insertAll(cityEntity, cityCompanionInsertBatch),
      );
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> insertCity({required CityLocalDto city}) async {
    try {
      final cityCompanionInsert = CityMapper.localDtoToCompanionInsert(city);
      await into(cityEntity).insert(cityCompanionInsert);
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> updateCity({required CityLocalDto city}) async {
    try {
      final CityEntityData cityEntityData = CityMapper.localDtoToData(city);
      await update(cityEntity).replace(cityEntityData);
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> deleteAllCity() async {
    try {
      await delete(cityEntity).go();
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> deleteCity({required CityLocalDto city}) async {
    try {
      await (delete(
            cityEntity,
          )..where(
            (cityEntityData) => cityEntityData.id.equals(city.id),
          ))
          .go();
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
