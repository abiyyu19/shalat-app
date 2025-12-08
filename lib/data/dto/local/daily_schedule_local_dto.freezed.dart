// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyScheduleLocalDto {

 int? get localId;// id dari ScheduleEntity (boleh dipakai / diabaikan)
 CityLocalDto get city; DateTime get date;// 2025-12-04
 String get parsedDate;// "Kamis, 04/12/2025"
 String get imsak; String get subuh; String get terbit; String get dhuha; String get dzuhur; String get ashar; String get maghrib; String get isya;
/// Create a copy of DailyScheduleLocalDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyScheduleLocalDtoCopyWith<DailyScheduleLocalDto> get copyWith => _$DailyScheduleLocalDtoCopyWithImpl<DailyScheduleLocalDto>(this as DailyScheduleLocalDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyScheduleLocalDto&&(identical(other.localId, localId) || other.localId == localId)&&(identical(other.city, city) || other.city == city)&&(identical(other.date, date) || other.date == date)&&(identical(other.parsedDate, parsedDate) || other.parsedDate == parsedDate)&&(identical(other.imsak, imsak) || other.imsak == imsak)&&(identical(other.subuh, subuh) || other.subuh == subuh)&&(identical(other.terbit, terbit) || other.terbit == terbit)&&(identical(other.dhuha, dhuha) || other.dhuha == dhuha)&&(identical(other.dzuhur, dzuhur) || other.dzuhur == dzuhur)&&(identical(other.ashar, ashar) || other.ashar == ashar)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isya, isya) || other.isya == isya));
}


@override
int get hashCode => Object.hash(runtimeType,localId,city,date,parsedDate,imsak,subuh,terbit,dhuha,dzuhur,ashar,maghrib,isya);

@override
String toString() {
  return 'DailyScheduleLocalDto(localId: $localId, city: $city, date: $date, parsedDate: $parsedDate, imsak: $imsak, subuh: $subuh, terbit: $terbit, dhuha: $dhuha, dzuhur: $dzuhur, ashar: $ashar, maghrib: $maghrib, isya: $isya)';
}


}

/// @nodoc
abstract mixin class $DailyScheduleLocalDtoCopyWith<$Res>  {
  factory $DailyScheduleLocalDtoCopyWith(DailyScheduleLocalDto value, $Res Function(DailyScheduleLocalDto) _then) = _$DailyScheduleLocalDtoCopyWithImpl;
@useResult
$Res call({
 int? localId, CityLocalDto city, DateTime date, String parsedDate, String imsak, String subuh, String terbit, String dhuha, String dzuhur, String ashar, String maghrib, String isya
});


$CityLocalDtoCopyWith<$Res> get city;

}
/// @nodoc
class _$DailyScheduleLocalDtoCopyWithImpl<$Res>
    implements $DailyScheduleLocalDtoCopyWith<$Res> {
  _$DailyScheduleLocalDtoCopyWithImpl(this._self, this._then);

  final DailyScheduleLocalDto _self;
  final $Res Function(DailyScheduleLocalDto) _then;

/// Create a copy of DailyScheduleLocalDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localId = freezed,Object? city = null,Object? date = null,Object? parsedDate = null,Object? imsak = null,Object? subuh = null,Object? terbit = null,Object? dhuha = null,Object? dzuhur = null,Object? ashar = null,Object? maghrib = null,Object? isya = null,}) {
  return _then(_self.copyWith(
localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as int?,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityLocalDto,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,parsedDate: null == parsedDate ? _self.parsedDate : parsedDate // ignore: cast_nullable_to_non_nullable
as String,imsak: null == imsak ? _self.imsak : imsak // ignore: cast_nullable_to_non_nullable
as String,subuh: null == subuh ? _self.subuh : subuh // ignore: cast_nullable_to_non_nullable
as String,terbit: null == terbit ? _self.terbit : terbit // ignore: cast_nullable_to_non_nullable
as String,dhuha: null == dhuha ? _self.dhuha : dhuha // ignore: cast_nullable_to_non_nullable
as String,dzuhur: null == dzuhur ? _self.dzuhur : dzuhur // ignore: cast_nullable_to_non_nullable
as String,ashar: null == ashar ? _self.ashar : ashar // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isya: null == isya ? _self.isya : isya // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DailyScheduleLocalDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityLocalDtoCopyWith<$Res> get city {
  
  return $CityLocalDtoCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyScheduleLocalDto].
extension DailyScheduleLocalDtoPatterns on DailyScheduleLocalDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyScheduleLocalDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyScheduleLocalDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyScheduleLocalDto value)  $default,){
final _that = this;
switch (_that) {
case _DailyScheduleLocalDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyScheduleLocalDto value)?  $default,){
final _that = this;
switch (_that) {
case _DailyScheduleLocalDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? localId,  CityLocalDto city,  DateTime date,  String parsedDate,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyScheduleLocalDto() when $default != null:
return $default(_that.localId,_that.city,_that.date,_that.parsedDate,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? localId,  CityLocalDto city,  DateTime date,  String parsedDate,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya)  $default,) {final _that = this;
switch (_that) {
case _DailyScheduleLocalDto():
return $default(_that.localId,_that.city,_that.date,_that.parsedDate,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? localId,  CityLocalDto city,  DateTime date,  String parsedDate,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya)?  $default,) {final _that = this;
switch (_that) {
case _DailyScheduleLocalDto() when $default != null:
return $default(_that.localId,_that.city,_that.date,_that.parsedDate,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya);case _:
  return null;

}
}

}

/// @nodoc


class _DailyScheduleLocalDto implements DailyScheduleLocalDto {
  const _DailyScheduleLocalDto({this.localId, required this.city, required this.date, required this.parsedDate, required this.imsak, required this.subuh, required this.terbit, required this.dhuha, required this.dzuhur, required this.ashar, required this.maghrib, required this.isya});
  

@override final  int? localId;
// id dari ScheduleEntity (boleh dipakai / diabaikan)
@override final  CityLocalDto city;
@override final  DateTime date;
// 2025-12-04
@override final  String parsedDate;
// "Kamis, 04/12/2025"
@override final  String imsak;
@override final  String subuh;
@override final  String terbit;
@override final  String dhuha;
@override final  String dzuhur;
@override final  String ashar;
@override final  String maghrib;
@override final  String isya;

/// Create a copy of DailyScheduleLocalDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyScheduleLocalDtoCopyWith<_DailyScheduleLocalDto> get copyWith => __$DailyScheduleLocalDtoCopyWithImpl<_DailyScheduleLocalDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyScheduleLocalDto&&(identical(other.localId, localId) || other.localId == localId)&&(identical(other.city, city) || other.city == city)&&(identical(other.date, date) || other.date == date)&&(identical(other.parsedDate, parsedDate) || other.parsedDate == parsedDate)&&(identical(other.imsak, imsak) || other.imsak == imsak)&&(identical(other.subuh, subuh) || other.subuh == subuh)&&(identical(other.terbit, terbit) || other.terbit == terbit)&&(identical(other.dhuha, dhuha) || other.dhuha == dhuha)&&(identical(other.dzuhur, dzuhur) || other.dzuhur == dzuhur)&&(identical(other.ashar, ashar) || other.ashar == ashar)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isya, isya) || other.isya == isya));
}


@override
int get hashCode => Object.hash(runtimeType,localId,city,date,parsedDate,imsak,subuh,terbit,dhuha,dzuhur,ashar,maghrib,isya);

@override
String toString() {
  return 'DailyScheduleLocalDto(localId: $localId, city: $city, date: $date, parsedDate: $parsedDate, imsak: $imsak, subuh: $subuh, terbit: $terbit, dhuha: $dhuha, dzuhur: $dzuhur, ashar: $ashar, maghrib: $maghrib, isya: $isya)';
}


}

/// @nodoc
abstract mixin class _$DailyScheduleLocalDtoCopyWith<$Res> implements $DailyScheduleLocalDtoCopyWith<$Res> {
  factory _$DailyScheduleLocalDtoCopyWith(_DailyScheduleLocalDto value, $Res Function(_DailyScheduleLocalDto) _then) = __$DailyScheduleLocalDtoCopyWithImpl;
@override @useResult
$Res call({
 int? localId, CityLocalDto city, DateTime date, String parsedDate, String imsak, String subuh, String terbit, String dhuha, String dzuhur, String ashar, String maghrib, String isya
});


@override $CityLocalDtoCopyWith<$Res> get city;

}
/// @nodoc
class __$DailyScheduleLocalDtoCopyWithImpl<$Res>
    implements _$DailyScheduleLocalDtoCopyWith<$Res> {
  __$DailyScheduleLocalDtoCopyWithImpl(this._self, this._then);

  final _DailyScheduleLocalDto _self;
  final $Res Function(_DailyScheduleLocalDto) _then;

/// Create a copy of DailyScheduleLocalDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localId = freezed,Object? city = null,Object? date = null,Object? parsedDate = null,Object? imsak = null,Object? subuh = null,Object? terbit = null,Object? dhuha = null,Object? dzuhur = null,Object? ashar = null,Object? maghrib = null,Object? isya = null,}) {
  return _then(_DailyScheduleLocalDto(
localId: freezed == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as int?,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityLocalDto,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,parsedDate: null == parsedDate ? _self.parsedDate : parsedDate // ignore: cast_nullable_to_non_nullable
as String,imsak: null == imsak ? _self.imsak : imsak // ignore: cast_nullable_to_non_nullable
as String,subuh: null == subuh ? _self.subuh : subuh // ignore: cast_nullable_to_non_nullable
as String,terbit: null == terbit ? _self.terbit : terbit // ignore: cast_nullable_to_non_nullable
as String,dhuha: null == dhuha ? _self.dhuha : dhuha // ignore: cast_nullable_to_non_nullable
as String,dzuhur: null == dzuhur ? _self.dzuhur : dzuhur // ignore: cast_nullable_to_non_nullable
as String,ashar: null == ashar ? _self.ashar : ashar // ignore: cast_nullable_to_non_nullable
as String,maghrib: null == maghrib ? _self.maghrib : maghrib // ignore: cast_nullable_to_non_nullable
as String,isya: null == isya ? _self.isya : isya // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DailyScheduleLocalDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityLocalDtoCopyWith<$Res> get city {
  
  return $CityLocalDtoCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}

// dart format on
