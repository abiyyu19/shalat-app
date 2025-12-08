import 'package:drift/drift.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/domain.dart';

/// Don't forget to use try catch when calling this mapper
class CityMapper {
  CityMapper._();

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

  static List<CityLocalDto> entityDataToLocalDtoBatch(
    final List<CityEntityData> cityEntityDataList,
  ) => cityEntityDataList
      .map(
        (cityEntityData) => entityDataToLocalDto(cityEntityData),
      )
      .toList();

  static CityLocalDto entityDataToLocalDto(final CityEntityData entityData) =>
      CityLocalDto(
        id: entityData.id,
        name: entityData.name,
        region: entityData.region,
      );

  //--- Usage: insert to local database

  //- Local

  static List<CityEntityCompanion> localDtoToCompanionInsertBatch(
    final List<CityLocalDto> cityLocalDtoList,
  ) => cityLocalDtoList
      .map(
        (cityLocalDto) => localDtoToCompanionInsert(cityLocalDto),
      )
      .toList();

  /// Using Local DTO (Internal Database Operation)
  /// This converter is used when inserting data from internal database
  static CityEntityCompanion localDtoToCompanionInsert(
    final CityLocalDto cityLocalDto,
  ) => CityEntityCompanion.insert(
    id: Value(cityLocalDto.id),
    name: cityLocalDto.name,
    region: Value(cityLocalDto.region),
  );

  //- Remote

  static List<CityEntityCompanion> dtoToCompanionInsertBatch(
    final List<CityDto> cityDtoList,
  ) => cityDtoList
      .map(
        (cityDto) => dtoToCompanionInsert(cityDto),
      )
      .toList();

  /// Using Dto (Rest API Response)
  /// This converter is used when inserting data from remote database
  static CityEntityCompanion dtoToCompanionInsert(
    final CityDto cityDto,
  ) => CityEntityCompanion.insert(
    id: Value(int.parse(cityDto.id)),
    name: cityDto.lokasi,
  );

  //--- Usage: update to local database

  //- Local
  static List<CityEntityData> localDtoToDataBatch(
    final List<CityLocalDto> cityLocalDtoList,
  ) => cityLocalDtoList
      .map(
        (cityLocalDto) => localDtoToData(cityLocalDto),
      )
      .toList();

  /// Using Local DTO (Internal Database Operation)
  /// This converter is used when updating data from internal database
  static CityEntityData localDtoToData(final CityLocalDto cityLocalDto) =>
      CityEntityData(
        id: cityLocalDto.id,
        name: cityLocalDto.name,
        region: cityLocalDto.region,
      );

  //- Remote
  static List<CityEntityData> dtoToDataBatch(
    final List<CityDto> cityDtoList,
  ) => cityDtoList
      .map(
        (cityDto) => dtoToData(cityDto),
      )
      .toList();

  /// Using Dto (Rest API Response)
  /// This converter is used when updating data from remote database
  static CityEntityData dtoToData(final CityDto cityDto) => CityEntityData(
    id: int.parse(cityDto.id),
    name: cityDto.lokasi,
  );
}
