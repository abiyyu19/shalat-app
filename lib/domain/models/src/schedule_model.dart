import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';

@freezed
sealed class ScheduleModel with _$ScheduleModel {
  const factory ScheduleModel({
    required final DateTime date,
    required final String parsedDate,

    required final String imsak,
    required final String subuh,
    required final String terbit,
    required final String dhuha,
    required final String dzuhur,
    required final String ashar,
    required final String maghrib,
    required final String isya,
  }) = _ScheduleModel;
}
