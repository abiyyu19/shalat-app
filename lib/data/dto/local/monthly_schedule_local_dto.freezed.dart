// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_schedule_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MonthlyScheduleDto {

 CityLocalDto get city; int get year; int get month;// 1-12
 List<DailyScheduleLocalDto> get days;
/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyScheduleDtoCopyWith<MonthlyScheduleDto> get copyWith => _$MonthlyScheduleDtoCopyWithImpl<MonthlyScheduleDto>(this as MonthlyScheduleDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyScheduleDto&&(identical(other.city, city) || other.city == city)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other.days, days));
}


@override
int get hashCode => Object.hash(runtimeType,city,year,month,const DeepCollectionEquality().hash(days));

@override
String toString() {
  return 'MonthlyScheduleDto(city: $city, year: $year, month: $month, days: $days)';
}


}

/// @nodoc
abstract mixin class $MonthlyScheduleDtoCopyWith<$Res>  {
  factory $MonthlyScheduleDtoCopyWith(MonthlyScheduleDto value, $Res Function(MonthlyScheduleDto) _then) = _$MonthlyScheduleDtoCopyWithImpl;
@useResult
$Res call({
 CityLocalDto city, int year, int month, List<DailyScheduleLocalDto> days
});


$CityLocalDtoCopyWith<$Res> get city;

}
/// @nodoc
class _$MonthlyScheduleDtoCopyWithImpl<$Res>
    implements $MonthlyScheduleDtoCopyWith<$Res> {
  _$MonthlyScheduleDtoCopyWithImpl(this._self, this._then);

  final MonthlyScheduleDto _self;
  final $Res Function(MonthlyScheduleDto) _then;

/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? year = null,Object? month = null,Object? days = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityLocalDto,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<DailyScheduleLocalDto>,
  ));
}
/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityLocalDtoCopyWith<$Res> get city {
  
  return $CityLocalDtoCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CityLocalDto city,  int year,  int month,  List<DailyScheduleLocalDto> days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyScheduleDto() when $default != null:
return $default(_that.city,_that.year,_that.month,_that.days);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CityLocalDto city,  int year,  int month,  List<DailyScheduleLocalDto> days)  $default,) {final _that = this;
switch (_that) {
case _MonthlyScheduleDto():
return $default(_that.city,_that.year,_that.month,_that.days);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CityLocalDto city,  int year,  int month,  List<DailyScheduleLocalDto> days)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyScheduleDto() when $default != null:
return $default(_that.city,_that.year,_that.month,_that.days);case _:
  return null;

}
}

}

/// @nodoc


class _MonthlyScheduleDto implements MonthlyScheduleDto {
  const _MonthlyScheduleDto({required this.city, required this.year, required this.month, required final  List<DailyScheduleLocalDto> days}): _days = days;
  

@override final  CityLocalDto city;
@override final  int year;
@override final  int month;
// 1-12
 final  List<DailyScheduleLocalDto> _days;
// 1-12
@override List<DailyScheduleLocalDto> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}


/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyScheduleDtoCopyWith<_MonthlyScheduleDto> get copyWith => __$MonthlyScheduleDtoCopyWithImpl<_MonthlyScheduleDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyScheduleDto&&(identical(other.city, city) || other.city == city)&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month)&&const DeepCollectionEquality().equals(other._days, _days));
}


@override
int get hashCode => Object.hash(runtimeType,city,year,month,const DeepCollectionEquality().hash(_days));

@override
String toString() {
  return 'MonthlyScheduleDto(city: $city, year: $year, month: $month, days: $days)';
}


}

/// @nodoc
abstract mixin class _$MonthlyScheduleDtoCopyWith<$Res> implements $MonthlyScheduleDtoCopyWith<$Res> {
  factory _$MonthlyScheduleDtoCopyWith(_MonthlyScheduleDto value, $Res Function(_MonthlyScheduleDto) _then) = __$MonthlyScheduleDtoCopyWithImpl;
@override @useResult
$Res call({
 CityLocalDto city, int year, int month, List<DailyScheduleLocalDto> days
});


@override $CityLocalDtoCopyWith<$Res> get city;

}
/// @nodoc
class __$MonthlyScheduleDtoCopyWithImpl<$Res>
    implements _$MonthlyScheduleDtoCopyWith<$Res> {
  __$MonthlyScheduleDtoCopyWithImpl(this._self, this._then);

  final _MonthlyScheduleDto _self;
  final $Res Function(_MonthlyScheduleDto) _then;

/// Create a copy of MonthlyScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? year = null,Object? month = null,Object? days = null,}) {
  return _then(_MonthlyScheduleDto(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityLocalDto,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<DailyScheduleLocalDto>,
  ));
}

/// Create a copy of MonthlyScheduleDto
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
