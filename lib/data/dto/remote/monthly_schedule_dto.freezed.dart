// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyScheduleDto {

 int get id; String get lokasi; String get daerah; List<ScheduleDto> get jadwal;
/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyScheduleDtoCopyWith<MonthlyScheduleDto> get copyWith => _$MonthlyScheduleDtoCopyWithImpl<MonthlyScheduleDto>(this as MonthlyScheduleDto, _$identity);

  /// Serializes this MonthlyScheduleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyScheduleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lokasi, lokasi) || other.lokasi == lokasi)&&(identical(other.daerah, daerah) || other.daerah == daerah)&&const DeepCollectionEquality().equals(other.jadwal, jadwal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lokasi,daerah,const DeepCollectionEquality().hash(jadwal));

@override
String toString() {
  return 'MonthlyScheduleDto(id: $id, lokasi: $lokasi, daerah: $daerah, jadwal: $jadwal)';
}


}

/// @nodoc
abstract mixin class $MonthlyScheduleDtoCopyWith<$Res>  {
  factory $MonthlyScheduleDtoCopyWith(MonthlyScheduleDto value, $Res Function(MonthlyScheduleDto) _then) = _$MonthlyScheduleDtoCopyWithImpl;
@useResult
$Res call({
 int id, String lokasi, String daerah, List<ScheduleDto> jadwal
});




}
/// @nodoc
class _$MonthlyScheduleDtoCopyWithImpl<$Res>
    implements $MonthlyScheduleDtoCopyWith<$Res> {
  _$MonthlyScheduleDtoCopyWithImpl(this._self, this._then);

  final MonthlyScheduleDto _self;
  final $Res Function(MonthlyScheduleDto) _then;

/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? lokasi = null,Object? daerah = null,Object? jadwal = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,lokasi: null == lokasi ? _self.lokasi : lokasi // ignore: cast_nullable_to_non_nullable
as String,daerah: null == daerah ? _self.daerah : daerah // ignore: cast_nullable_to_non_nullable
as String,jadwal: null == jadwal ? _self.jadwal : jadwal // ignore: cast_nullable_to_non_nullable
as List<ScheduleDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyScheduleDto].
extension MonthlyScheduleDtoPatterns on MonthlyScheduleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyScheduleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyScheduleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyScheduleDto value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyScheduleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyScheduleDto value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyScheduleDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String lokasi,  String daerah,  List<ScheduleDto> jadwal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyScheduleDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String lokasi,  String daerah,  List<ScheduleDto> jadwal)  $default,) {final _that = this;
switch (_that) {
case _MonthlyScheduleDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String lokasi,  String daerah,  List<ScheduleDto> jadwal)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyScheduleDto() when $default != null:
return $default(_that.id,_that.lokasi,_that.daerah,_that.jadwal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyScheduleDto implements MonthlyScheduleDto {
  const _MonthlyScheduleDto({required this.id, required this.lokasi, required this.daerah, required final  List<ScheduleDto> jadwal}): _jadwal = jadwal;
  factory _MonthlyScheduleDto.fromJson(Map<String, dynamic> json) => _$MonthlyScheduleDtoFromJson(json);

@override final  int id;
@override final  String lokasi;
@override final  String daerah;
 final  List<ScheduleDto> _jadwal;
@override List<ScheduleDto> get jadwal {
  if (_jadwal is EqualUnmodifiableListView) return _jadwal;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jadwal);
}


/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyScheduleDtoCopyWith<_MonthlyScheduleDto> get copyWith => __$MonthlyScheduleDtoCopyWithImpl<_MonthlyScheduleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyScheduleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyScheduleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.lokasi, lokasi) || other.lokasi == lokasi)&&(identical(other.daerah, daerah) || other.daerah == daerah)&&const DeepCollectionEquality().equals(other._jadwal, _jadwal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,lokasi,daerah,const DeepCollectionEquality().hash(_jadwal));

@override
String toString() {
  return 'MonthlyScheduleDto(id: $id, lokasi: $lokasi, daerah: $daerah, jadwal: $jadwal)';
}


}

/// @nodoc
abstract mixin class _$MonthlyScheduleDtoCopyWith<$Res> implements $MonthlyScheduleDtoCopyWith<$Res> {
  factory _$MonthlyScheduleDtoCopyWith(_MonthlyScheduleDto value, $Res Function(_MonthlyScheduleDto) _then) = __$MonthlyScheduleDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String lokasi, String daerah, List<ScheduleDto> jadwal
});




}
/// @nodoc
class __$MonthlyScheduleDtoCopyWithImpl<$Res>
    implements _$MonthlyScheduleDtoCopyWith<$Res> {
  __$MonthlyScheduleDtoCopyWithImpl(this._self, this._then);

  final _MonthlyScheduleDto _self;
  final $Res Function(_MonthlyScheduleDto) _then;

/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? lokasi = null,Object? daerah = null,Object? jadwal = null,}) {
  return _then(_MonthlyScheduleDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,lokasi: null == lokasi ? _self.lokasi : lokasi // ignore: cast_nullable_to_non_nullable
as String,daerah: null == daerah ? _self.daerah : daerah // ignore: cast_nullable_to_non_nullable
as String,jadwal: null == jadwal ? _self._jadwal : jadwal // ignore: cast_nullable_to_non_nullable
as List<ScheduleDto>,
  ));
}


}

// dart format on
