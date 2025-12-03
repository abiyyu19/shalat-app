// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shalat_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShalatDataDto {

 int get id; String get lokasi; String get daerah; ScheduleDto get jadwal;
/// Create a copy of ShalatDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShalatDataDtoCopyWith<ShalatDataDto> get copyWith => _$ShalatDataDtoCopyWithImpl<ShalatDataDto>(this as ShalatDataDto, _$identity);

  /// Serializes this ShalatDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShalatDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lokasi, lokasi) || other.lokasi == lokasi)&&(identical(other.daerah, daerah) || other.daerah == daerah)&&(identical(other.jadwal, jadwal) || other.jadwal == jadwal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lokasi,daerah,jadwal);

@override
String toString() {
  return 'ShalatDataDto(id: $id, lokasi: $lokasi, daerah: $daerah, jadwal: $jadwal)';
}


}

/// @nodoc
abstract mixin class $ShalatDataDtoCopyWith<$Res>  {
  factory $ShalatDataDtoCopyWith(ShalatDataDto value, $Res Function(ShalatDataDto) _then) = _$ShalatDataDtoCopyWithImpl;
@useResult
$Res call({
 int id, String lokasi, String daerah, ScheduleDto jadwal
});


$ScheduleDtoCopyWith<$Res> get jadwal;

}
/// @nodoc
class _$ShalatDataDtoCopyWithImpl<$Res>
    implements $ShalatDataDtoCopyWith<$Res> {
  _$ShalatDataDtoCopyWithImpl(this._self, this._then);

  final ShalatDataDto _self;
  final $Res Function(ShalatDataDto) _then;

/// Create a copy of ShalatDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lokasi = null,Object? daerah = null,Object? jadwal = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,lokasi: null == lokasi ? _self.lokasi : lokasi // ignore: cast_nullable_to_non_nullable
as String,daerah: null == daerah ? _self.daerah : daerah // ignore: cast_nullable_to_non_nullable
as String,jadwal: null == jadwal ? _self.jadwal : jadwal // ignore: cast_nullable_to_non_nullable
as ScheduleDto,
  ));
}
/// Create a copy of ShalatDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDtoCopyWith<$Res> get jadwal {
  
  return $ScheduleDtoCopyWith<$Res>(_self.jadwal, (value) {
    return _then(_self.copyWith(jadwal: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShalatDataDto].
extension ShalatDataDtoPatterns on ShalatDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShalatDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShalatDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShalatDataDto value)  $default,){
final _that = this;
switch (_that) {
case _ShalatDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShalatDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _ShalatDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String lokasi,  String daerah,  ScheduleDto jadwal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShalatDataDto() when $default != null:
return $default(_that.id,_that.lokasi,_that.daerah,_that.jadwal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String lokasi,  String daerah,  ScheduleDto jadwal)  $default,) {final _that = this;
switch (_that) {
case _ShalatDataDto():
return $default(_that.id,_that.lokasi,_that.daerah,_that.jadwal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String lokasi,  String daerah,  ScheduleDto jadwal)?  $default,) {final _that = this;
switch (_that) {
case _ShalatDataDto() when $default != null:
return $default(_that.id,_that.lokasi,_that.daerah,_that.jadwal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShalatDataDto implements ShalatDataDto {
  const _ShalatDataDto({required this.id, required this.lokasi, required this.daerah, required this.jadwal});
  factory _ShalatDataDto.fromJson(Map<String, dynamic> json) => _$ShalatDataDtoFromJson(json);

@override final  int id;
@override final  String lokasi;
@override final  String daerah;
@override final  ScheduleDto jadwal;

/// Create a copy of ShalatDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShalatDataDtoCopyWith<_ShalatDataDto> get copyWith => __$ShalatDataDtoCopyWithImpl<_ShalatDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShalatDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShalatDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lokasi, lokasi) || other.lokasi == lokasi)&&(identical(other.daerah, daerah) || other.daerah == daerah)&&(identical(other.jadwal, jadwal) || other.jadwal == jadwal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lokasi,daerah,jadwal);

@override
String toString() {
  return 'ShalatDataDto(id: $id, lokasi: $lokasi, daerah: $daerah, jadwal: $jadwal)';
}


}

/// @nodoc
abstract mixin class _$ShalatDataDtoCopyWith<$Res> implements $ShalatDataDtoCopyWith<$Res> {
  factory _$ShalatDataDtoCopyWith(_ShalatDataDto value, $Res Function(_ShalatDataDto) _then) = __$ShalatDataDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String lokasi, String daerah, ScheduleDto jadwal
});


@override $ScheduleDtoCopyWith<$Res> get jadwal;

}
/// @nodoc
class __$ShalatDataDtoCopyWithImpl<$Res>
    implements _$ShalatDataDtoCopyWith<$Res> {
  __$ShalatDataDtoCopyWithImpl(this._self, this._then);

  final _ShalatDataDto _self;
  final $Res Function(_ShalatDataDto) _then;

/// Create a copy of ShalatDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lokasi = null,Object? daerah = null,Object? jadwal = null,}) {
  return _then(_ShalatDataDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,lokasi: null == lokasi ? _self.lokasi : lokasi // ignore: cast_nullable_to_non_nullable
as String,daerah: null == daerah ? _self.daerah : daerah // ignore: cast_nullable_to_non_nullable
as String,jadwal: null == jadwal ? _self.jadwal : jadwal // ignore: cast_nullable_to_non_nullable
as ScheduleDto,
  ));
}

/// Create a copy of ShalatDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDtoCopyWith<$Res> get jadwal {
  
  return $ScheduleDtoCopyWith<$Res>(_self.jadwal, (value) {
    return _then(_self.copyWith(jadwal: value));
  });
}
}

// dart format on
