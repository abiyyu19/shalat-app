// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shalat_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShalatDataDto _$ShalatDataDtoFromJson(Map<String, dynamic> json) =>
    _ShalatDataDto(
      id: (json['id'] as num).toInt(),
      lokasi: json['lokasi'] as String,
      daerah: json['daerah'] as String,
      jadwal: ScheduleDto.fromJson(json['jadwal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShalatDataDtoToJson(_ShalatDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lokasi': instance.lokasi,
      'daerah': instance.daerah,
      'jadwal': instance.jadwal.toJson(),
    };
