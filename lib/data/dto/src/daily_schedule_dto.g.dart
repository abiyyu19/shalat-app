// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyScheduleDto _$DailyScheduleDtoFromJson(Map<String, dynamic> json) =>
    _DailyScheduleDto(
      id: (json['id'] as num).toInt(),
      lokasi: json['lokasi'] as String,
      daerah: json['daerah'] as String,
      jadwal: ScheduleDto.fromJson(json['jadwal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DailyScheduleDtoToJson(_DailyScheduleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lokasi': instance.lokasi,
      'daerah': instance.daerah,
      'jadwal': instance.jadwal.toJson(),
    };
