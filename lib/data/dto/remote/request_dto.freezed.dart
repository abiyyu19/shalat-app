// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestDto {

 String get path;
/// Create a copy of RequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestDtoCopyWith<RequestDto> get copyWith => _$RequestDtoCopyWithImpl<RequestDto>(this as RequestDto, _$identity);

  /// Serializes this RequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestDto&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'RequestDto(path: $path)';
}


}

/// @nodoc
abstract mixin class $RequestDtoCopyWith<$Res>  {
  factory $RequestDtoCopyWith(RequestDto value, $Res Function(RequestDto) _then) = _$RequestDtoCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$RequestDtoCopyWithImpl<$Res>
    implements $RequestDtoCopyWith<$Res> {
  _$RequestDtoCopyWithImpl(this._self, this._then);

  final RequestDto _self;
  final $Res Function(RequestDto) _then;

/// Create a copy of RequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestDto].
extension RequestDtoPatterns on RequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestDto value)  $default,){
final _that = this;
switch (_that) {
case _RequestDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _RequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestDto() when $default != null:
return $default(_that.path);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path)  $default,) {final _that = this;
switch (_that) {
case _RequestDto():
return $default(_that.path);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path)?  $default,) {final _that = this;
switch (_that) {
case _RequestDto() when $default != null:
return $default(_that.path);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestDto implements RequestDto {
  const _RequestDto({required this.path});
  factory _RequestDto.fromJson(Map<String, dynamic> json) => _$RequestDtoFromJson(json);

@override final  String path;

/// Create a copy of RequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestDtoCopyWith<_RequestDto> get copyWith => __$RequestDtoCopyWithImpl<_RequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestDto&&(identical(other.path, path) || other.path == path));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'RequestDto(path: $path)';
}


}

/// @nodoc
abstract mixin class _$RequestDtoCopyWith<$Res> implements $RequestDtoCopyWith<$Res> {
  factory _$RequestDtoCopyWith(_RequestDto value, $Res Function(_RequestDto) _then) = __$RequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String path
});




}
/// @nodoc
class __$RequestDtoCopyWithImpl<$Res>
    implements _$RequestDtoCopyWith<$Res> {
  __$RequestDtoCopyWithImpl(this._self, this._then);

  final _RequestDto _self;
  final $Res Function(_RequestDto) _then;

/// Create a copy of RequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(_RequestDto(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
