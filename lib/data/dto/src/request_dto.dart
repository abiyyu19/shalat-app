import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';

part 'request_dto.freezed.dart';
part 'request_dto.g.dart';

@freezed
sealed class RequestDto with _$RequestDto {
  const factory RequestDto({
    required final String path,
  }) = _RequestDto;

  factory RequestDto.fromJson(final JSON json) => _$RequestDtoFromJson(json);
}
