import 'package:drift/drift.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/domain.dart';

/// Don't forget to use try catch when calling this mapper
class CityMapper {
  CityMapper._();

  //--- Usage: receive from server via REST API

  static List<CityModel> dtoToModelBatch(final List<CityDto> cityDtoList) =>
      cityDtoList
          .map(
            (cityDto) => dtoToModel(cityDto),
          )
          .toList();

  static CityModel dtoToModel(final CityDto cityDto) => CityModel(
    id: int.parse(cityDto.id),
    name: cityDto.lokasi,
  );

  //--- Usage: send to server via REST API

  static List<CityDto> modelToDtoBatch(final List<CityModel> cityModelList) =>
      cityModelList
          .map(
            (cityModel) => modelToDto(cityModel),
          )
          .toList();

  static CityDto modelToDto(final CityModel cityModel) => CityDto(
    id: cityModel.id.toString(),
    lokasi: cityModel.name,
  );

  /// these code below can be refactored
  /// based on the database implementation

  //--- Usage: select from local database

  static List<CityModel> dataToModelBatch(
    final List<CityEntityData> cityEntityDataList,
  ) => cityEntityDataList
      .map(
        (cityEntityData) => dataToModel(cityEntityData),
      )
      .toList();

  static CityModel dataToModel(final CityEntityData cityEntityData) =>
      CityModel(
        id: cityEntityData.id,
        name: cityEntityData.name,
      );

  //--- Usage: insert to local database

  static List<CityEntityCompanion> modelToCompanionInsertBatch(
    final List<CityModel> cityModelList,
  ) => cityModelList
      .map(
        (cityModel) => modelToCompanionInsert(cityModel),
      )
      .toList();

  static CityEntityCompanion modelToCompanionInsert(
    final CityModel cityModel,
  ) => CityEntityCompanion.insert(
    id: Value(cityModel.id),
    name: cityModel.name,
  );

  static List<CityEntityCompanion> dtoToCompanionInsertBatch(
    final List<CityDto> cityDtoList,
  ) => cityDtoList
      .map(
        (cityDto) => dtoToCompanionInsert(cityDto),
      )
      .toList();

  static CityEntityCompanion dtoToCompanionInsert(
    final CityDto cityDto,
  ) => CityEntityCompanion.insert(
    id: Value(int.parse(cityDto.id)),
    name: cityDto.lokasi,
  );

  //--- Usage: update to local database

  static List<CityEntityData> modelToDataBatch(
    final List<CityModel> cityModelList,
  ) => cityModelList
      .map(
        (cityModel) => modelToData(cityModel),
      )
      .toList();

  static CityEntityData modelToData(final CityModel cityModel) =>
      CityEntityData(
        id: cityModel.id,
        name: cityModel.name,
      );

  static List<CityEntityData> dtoToDataBatch(
    final List<CityDto> cityDtoList,
  ) => cityDtoList
      .map(
        (cityDto) => dtoToData(cityDto),
      )
      .toList();

  static CityEntityData dtoToData(final CityDto cityDto) => CityEntityData(
    id: int.parse(cityDto.id),
    name: cityDto.lokasi,
  );
}
