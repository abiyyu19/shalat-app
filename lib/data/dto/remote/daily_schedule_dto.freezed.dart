// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyScheduleDto {

 int get id;// city id
 String get lokasi; String get daerah; ScheduleDto get jadwal;
/// Create a copy of DailyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyScheduleDtoCopyWith<DailyScheduleDto> get copyWith => _$DailyScheduleDtoCopyWithImpl<DailyScheduleDto>(this as DailyScheduleDto, _$identity);

  /// Serializes this DailyScheduleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyScheduleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lokasi, lokasi) || other.lokasi == lokasi)&&(identical(other.daerah, daerah) || other.daerah == daerah)&&(identical(other.jadwal, jadwal) || other.jadwal == jadwal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lokasi,daerah,jadwal);

@override
String toString() {
  return 'DailyScheduleDto(id: $id, lokasi: $lokasi, daerah: $daerah, jadwal: $jadwal)';
}


}

/// @nodoc
abstract mixin class $DailyScheduleDtoCopyWith<$Res>  {
  factory $DailyScheduleDtoCopyWith(DailyScheduleDto value, $Res Function(DailyScheduleDto) _then) = _$DailyScheduleDtoCopyWithImpl;
@useResult
$Res call({
 int id, String lokasi, String daerah, ScheduleDto jadwal
});


$ScheduleDtoCopyWith<$Res> get jadwal;

}
/// @nodoc
class _$DailyScheduleDtoCopyWithImpl<$Res>
    implements $DailyScheduleDtoCopyWith<$Res> {
  _$DailyScheduleDtoCopyWithImpl(this._self, this._then);

  final DailyScheduleDto _self;
  final $Res Function(DailyScheduleDto) _then;

/// Create a copy of DailyScheduleDto
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
/// Create a copy of DailyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDtoCopyWith<$Res> get jadwal {
  
  return $ScheduleDtoCopyWith<$Res>(_self.jadwal, (value) {
    return _then(_self.copyWith(jadwal: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyScheduleDto].
extension DailyScheduleDtoPatterns on DailyScheduleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyScheduleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyScheduleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyScheduleDto value)  $default,){
final _that = this;
switch (_that) {
case _DailyScheduleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyScheduleDto value)?  $default,){
final _that = this;
switch (_that) {
case _DailyScheduleDto() when $default != null:
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
case _DailyScheduleDto() when $default != null:
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
case _DailyScheduleDto():
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
case _DailyScheduleDto() when $default != null:
return $default(_that.id,_that.lokasi,_that.daerah,_that.jadwal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyScheduleDto implements DailyScheduleDto {
  const _DailyScheduleDto({required this.id, required this.lokasi, required this.daerah, required this.jadwal});
  factory _DailyScheduleDto.fromJson(Map<String, dynamic> json) => _$DailyScheduleDtoFromJson(json);

@override final  int id;
// city id
@override final  String lokasi;
@override final  String daerah;
@override final  ScheduleDto jadwal;

/// Create a copy of DailyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyScheduleDtoCopyWith<_DailyScheduleDto> get copyWith => __$DailyScheduleDtoCopyWithImpl<_DailyScheduleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyScheduleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyScheduleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lokasi, lokasi) || other.lokasi == lokasi)&&(identical(other.daerah, daerah) || other.daerah == daerah)&&(identical(other.jadwal, jadwal) || other.jadwal == jadwal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lokasi,daerah,jadwal);

@override
String toString() {
  return 'DailyScheduleDto(id: $id, lokasi: $lokasi, daerah: $daerah, jadwal: $jadwal)';
}


}

/// @nodoc
abstract mixin class _$DailyScheduleDtoCopyWith<$Res> implements $DailyScheduleDtoCopyWith<$Res> {
  factory _$DailyScheduleDtoCopyWith(_DailyScheduleDto value, $Res Function(_DailyScheduleDto) _then) = __$DailyScheduleDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String lokasi, String daerah, ScheduleDto jadwal
});


@override $ScheduleDtoCopyWith<$Res> get jadwal;

}
/// @nodoc
class __$DailyScheduleDtoCopyWithImpl<$Res>
    implements _$DailyScheduleDtoCopyWith<$Res> {
  __$DailyScheduleDtoCopyWithImpl(this._self, this._then);

  final _DailyScheduleDto _self;
  final $Res Function(_DailyScheduleDto) _then;

/// Create a copy of DailyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lokasi = null,Object? daerah = null,Object? jadwal = null,}) {
  return _then(_DailyScheduleDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,lokasi: null == lokasi ? _self.lokasi : lokasi // ignore: cast_nullable_to_non_nullable
as String,daerah: null == daerah ? _self.daerah : daerah // ignore: cast_nullable_to_non_nullable
as String,jadwal: null == jadwal ? _self.jadwal : jadwal // ignore: cast_nullable_to_non_nullable
as ScheduleDto,
  ));
}

/// Create a copy of DailyScheduleDto
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
