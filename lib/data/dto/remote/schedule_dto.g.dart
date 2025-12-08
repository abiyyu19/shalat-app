// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleDto _$ScheduleDtoFromJson(Map<String, dynamic> json) => _ScheduleDto(
  tanggal: json['tanggal'] as String,
  imsak: json['imsak'] as String,
  subuh: json['subuh'] as String,
  terbit: json['terbit'] as String,
  dhuha: json['dhuha'] as String,
  dzuhur: json['dzuhur'] as String,
  ashar: json['ashar'] as String,
  maghrib: json['maghrib'] as String,
  isya: json['isya'] as String,
  date: const DateOnlyUtcSerializer().fromJson(json['date'] as String),
);

Map<String, dynamic> _$ScheduleDtoToJson(_ScheduleDto instance) =>
    <String, dynamic>{
      'tanggal': instance.tanggal,
      'imsak': instance.imsak,
      'subuh': instance.subuh,
      'terbit': instance.terbit,
      'dhuha': instance.dhuha,
      'dzuhur': instance.dzuhur,
      'ashar': instance.ashar,
      'maghrib': instance.maghrib,
      'isya': instance.isya,
      'date': const DateOnlyUtcSerializer().toJson(instance.date),
    };
