import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/data/data.dart';

part 'base_response_dto.freezed.dart';
part 'base_response_dto.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class BaseResponseDto<T> with _$BaseResponseDto<T> {
  const factory BaseResponseDto({
    required final String status,
    required final RequestDto request,
    final T? data,
  }) = _BaseResponseDto<T>;

  factory BaseResponseDto.fromJson(
    final JSON json,
    final T Function(Object?) fromJsonT,
  ) => _$BaseResponseDtoFromJson(json, fromJsonT);
}
