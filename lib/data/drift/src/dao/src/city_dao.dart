import 'package:drift/drift.dart';
import 'package:shalat_app/core/result/result.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/models/src/city_model.dart';

part 'city_dao.g.dart';

@DriftAccessor(tables: [CityEntity])
class CityDao extends DatabaseAccessor<AppDatabase>
    with _$CityDaoMixin
    implements CityLocal {
  // this constructor is required so that the main database can create an instance
  // of this object.
  CityDao(super.db);

  @override
  Future<Result<List<CityModel>>> getAllCity() async {
    try {
      final citiesEntity = await select(cityEntity).get();
      return Result.ok(CityMapper.dataToModelBatch(citiesEntity));
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<CityModel>> getCityById({required int cityId}) async {
    try {
      final cityEntityData =
          await (select(
                cityEntity,
              )..where(
                (city) => city.id.equals(cityId),
              ))
              .getSingle();
      return Result.ok(CityMapper.dataToModel(cityEntityData));
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<List<CityModel>>> searchCityByQuery({
    required String query,
  }) async {
    try {
      final citiesEntity =
          await (select(
                cityEntity,
              )..where(
                (city) => city.name.contains(query),
              ))
              .get();
      return Result.ok(CityMapper.dataToModelBatch(citiesEntity));
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> insertCityBatch({
    required List<CityModel> cities,
  }) async {
    try {
      final cityCompanionInsertBatch = CityMapper.modelToCompanionInsertBatch(
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
  Future<Result<void>> insertCity({required CityModel city}) async {
    try {
      final cityCompanionInsert = CityMapper.modelToCompanionInsert(city);
      await into(cityEntity).insert(cityCompanionInsert);
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }

  @override
  Future<Result<void>> updateCity({required CityModel city}) async {
    try {
      final cityEntityData = CityMapper.modelToData(city);
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
  Future<Result<void>> deleteCity({required CityModel city}) async {
    try {
      final cityEntityData = CityMapper.modelToData(city);
      await (delete(
            cityEntity,
          )..where(
            (city) => city.id.equals(cityEntityData.id),
          ))
          .go();
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    }
  }
}
