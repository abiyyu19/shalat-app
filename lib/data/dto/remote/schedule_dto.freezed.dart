// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleDto {

 String get tanggal; String get imsak; String get subuh; String get terbit; String get dhuha; String get dzuhur; String get ashar; String get maghrib; String get isya;@DateOnlyUtcSerializer() DateTime get date;
/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleDtoCopyWith<ScheduleDto> get copyWith => _$ScheduleDtoCopyWithImpl<ScheduleDto>(this as ScheduleDto, _$identity);

  /// Serializes this ScheduleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleDto&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.imsak, imsak) || other.imsak == imsak)&&(identical(other.subuh, subuh) || other.subuh == subuh)&&(identical(other.terbit, terbit) || other.terbit == terbit)&&(identical(other.dhuha, dhuha) || other.dhuha == dhuha)&&(identical(other.dzuhur, dzuhur) || other.dzuhur == dzuhur)&&(identical(other.ashar, ashar) || other.ashar == ashar)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isya, isya) || other.isya == isya)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggal,imsak,subuh,terbit,dhuha,dzuhur,ashar,maghrib,isya,date);

@override
String toString() {
  return 'ScheduleDto(tanggal: $tanggal, imsak: $imsak, subuh: $subuh, terbit: $terbit, dhuha: $dhuha, dzuhur: $dzuhur, ashar: $ashar, maghrib: $maghrib, isya: $isya, date: $date)';
}


}

/// @nodoc
abstract mixin class $ScheduleDtoCopyWith<$Res>  {
  factory $ScheduleDtoCopyWith(ScheduleDto value, $Res Function(ScheduleDto) _then) = _$ScheduleDtoCopyWithImpl;
@useResult
$Res call({
 String tanggal, String imsak, String subuh, String terbit, String dhuha, String dzuhur, String ashar, String maghrib, String isya,@DateOnlyUtcSerializer() DateTime date
});




}
/// @nodoc
class _$ScheduleDtoCopyWithImpl<$Res>
    implements $ScheduleDtoCopyWith<$Res> {
  _$ScheduleDtoCopyWithImpl(this._self, this._then);

  final ScheduleDto _self;
  final $Res Function(ScheduleDto) _then;

/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tanggal = null,Object? imsak = null,Object? subuh = null,Object? terbit = null,Object? dhuha = null,Object? dzuhur = null,Object? ashar = null,Object? maghrib = null,Object? isya = null,Object? date = null,}) {
  return _then(_self.copyWith(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,imsak: null == imsak ? _self.imsak : imsak // ignore: cast_nullable_to_non_nullable
as String,subuh: null == subuh ? _self.subuh : subuh // ignore: cast_nullable_to_non_nullable
as String,terbit: null == terbit ? _self.terbit : terbit // ignore: cast_nullable_to_non_nullable
as String,dhuha: null == dhuha ? _self.dhuha : dhuha // ignore: cast_nullable_to_non_nullable
as String,dzuhur: null == dzuhur ? _self.dzuhur : dzuhur // ignore: cast_nullable_to_non_nullable
as String,ashar: null == ashar ? _self.ashar : ashar // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isya: null == isya ? _self.isya : isya // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ScheduleDto].
extension ScheduleDtoPatterns on ScheduleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleDto value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleDto value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tanggal,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya, @DateOnlyUtcSerializer()  DateTime date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleDto() when $default != null:
return $default(_that.tanggal,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tanggal,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya, @DateOnlyUtcSerializer()  DateTime date)  $default,) {final _that = this;
switch (_that) {
case _ScheduleDto():
return $default(_that.tanggal,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya,_that.date);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tanggal,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya, @DateOnlyUtcSerializer()  DateTime date)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleDto() when $default != null:
return $default(_that.tanggal,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScheduleDto implements ScheduleDto {
  const _ScheduleDto({required this.tanggal, required this.imsak, required this.subuh, required this.terbit, required this.dhuha, required this.dzuhur, required this.ashar, required this.maghrib, required this.isya, @DateOnlyUtcSerializer() required this.date});
  factory _ScheduleDto.fromJson(Map<String, dynamic> json) => _$ScheduleDtoFromJson(json);

@override final  String tanggal;
@override final  String imsak;
@override final  String subuh;
@override final  String terbit;
@override final  String dhuha;
@override final  String dzuhur;
@override final  String ashar;
@override final  String maghrib;
@override final  String isya;
@override@DateOnlyUtcSerializer() final  DateTime date;

/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleDtoCopyWith<_ScheduleDto> get copyWith => __$ScheduleDtoCopyWithImpl<_ScheduleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleDto&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&(identical(other.imsak, imsak) || other.imsak == imsak)&&(identical(other.subuh, subuh) || other.subuh == subuh)&&(identical(other.terbit, terbit) || other.terbit == terbit)&&(identical(other.dhuha, dhuha) || other.dhuha == dhuha)&&(identical(other.dzuhur, dzuhur) || other.dzuhur == dzuhur)&&(identical(other.ashar, ashar) || other.ashar == ashar)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isya, isya) || other.isya == isya)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tanggal,imsak,subuh,terbit,dhuha,dzuhur,ashar,maghrib,isya,date);

@override
String toString() {
  return 'ScheduleDto(tanggal: $tanggal, imsak: $imsak, subuh: $subuh, terbit: $terbit, dhuha: $dhuha, dzuhur: $dzuhur, ashar: $ashar, maghrib: $maghrib, isya: $isya, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ScheduleDtoCopyWith<$Res> implements $ScheduleDtoCopyWith<$Res> {
  factory _$ScheduleDtoCopyWith(_ScheduleDto value, $Res Function(_ScheduleDto) _then) = __$ScheduleDtoCopyWithImpl;
@override @useResult
$Res call({
 String tanggal, String imsak, String subuh, String terbit, String dhuha, String dzuhur, String ashar, String maghrib, String isya,@DateOnlyUtcSerializer() DateTime date
});




}
/// @nodoc
class __$ScheduleDtoCopyWithImpl<$Res>
    implements _$ScheduleDtoCopyWith<$Res> {
  __$ScheduleDtoCopyWithImpl(this._self, this._then);

  final _ScheduleDto _self;
  final $Res Function(_ScheduleDto) _then;

/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tanggal = null,Object? imsak = null,Object? subuh = null,Object? terbit = null,Object? dhuha = null,Object? dzuhur = null,Object? ashar = null,Object? maghrib = null,Object? isya = null,Object? date = null,}) {
  return _then(_ScheduleDto(
tanggal: null == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String,imsak: null == imsak ? _self.imsak : imsak // ignore: cast_nullable_to_non_nullable
as String,subuh: null == subuh ? _self.subuh : subuh // ignore: cast_nullable_to_non_nullable
as String,terbit: null == terbit ? _self.terbit : terbit // ignore: cast_nullable_to_non_nullable
as String,dhuha: null == dhuha ? _self.dhuha : dhuha // ignore: cast_nullable_to_non_nullable
as String,dzuhur: null == dzuhur ? _self.dzuhur : dzuhur // ignore: cast_nullable_to_non_nullable
as String,ashar: null == ashar ? _self.ashar : ashar // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isya: null == isya ? _self.isya : isya // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
