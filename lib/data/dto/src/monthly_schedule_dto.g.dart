// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlyScheduleDto _$MonthlyScheduleDtoFromJson(Map<String, dynamic> json) =>
    _MonthlyScheduleDto(
      id: (json['id'] as num).toInt(),
      lokasi: json['lokasi'] as String,
      daerah: json['daerah'] as String,
      jadwal: (json['jadwal'] as List<dynamic>)
          .map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MonthlyScheduleDtoToJson(_MonthlyScheduleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lokasi': instance.lokasi,
      'daerah': instance.daerah,
      'jadwal': instance.jadwal.map((e) => e.toJson()).toList(),
    };
