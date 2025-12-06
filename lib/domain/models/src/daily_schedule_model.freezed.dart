// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DailyScheduleModel {

 CityModel get city; ScheduleModel get schedule;
/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyScheduleModelCopyWith<DailyScheduleModel> get copyWith => _$DailyScheduleModelCopyWithImpl<DailyScheduleModel>(this as DailyScheduleModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyScheduleModel&&(identical(other.city, city) || other.city == city)&&(identical(other.schedule, schedule) || other.schedule == schedule));
}


@override
int get hashCode => Object.hash(runtimeType,city,schedule);

@override
String toString() {
  return 'DailyScheduleModel(city: $city, schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class $DailyScheduleModelCopyWith<$Res>  {
  factory $DailyScheduleModelCopyWith(DailyScheduleModel value, $Res Function(DailyScheduleModel) _then) = _$DailyScheduleModelCopyWithImpl;
@useResult
$Res call({
 CityModel city, ScheduleModel schedule
});


$CityModelCopyWith<$Res> get city;$ScheduleModelCopyWith<$Res> get schedule;

}
/// @nodoc
class _$DailyScheduleModelCopyWithImpl<$Res>
    implements $DailyScheduleModelCopyWith<$Res> {
  _$DailyScheduleModelCopyWithImpl(this._self, this._then);

  final DailyScheduleModel _self;
  final $Res Function(DailyScheduleModel) _then;

/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? schedule = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as ScheduleModel,
  ));
}
/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get city {
  
  return $CityModelCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleModelCopyWith<$Res> get schedule {
  
  return $ScheduleModelCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyScheduleModel].
extension DailyScheduleModelPatterns on DailyScheduleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyScheduleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyScheduleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyScheduleModel value)  $default,){
final _that = this;
switch (_that) {
case _DailyScheduleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyScheduleModel value)?  $default,){
final _that = this;
switch (_that) {
case _DailyScheduleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CityModel city,  ScheduleModel schedule)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyScheduleModel() when $default != null:
return $default(_that.city,_that.schedule);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CityModel city,  ScheduleModel schedule)  $default,) {final _that = this;
switch (_that) {
case _DailyScheduleModel():
return $default(_that.city,_that.schedule);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CityModel city,  ScheduleModel schedule)?  $default,) {final _that = this;
switch (_that) {
case _DailyScheduleModel() when $default != null:
return $default(_that.city,_that.schedule);case _:
  return null;

}
}

}

/// @nodoc


class _DailyScheduleModel implements DailyScheduleModel {
  const _DailyScheduleModel({required this.city, required this.schedule});
  

@override final  CityModel city;
@override final  ScheduleModel schedule;

/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyScheduleModelCopyWith<_DailyScheduleModel> get copyWith => __$DailyScheduleModelCopyWithImpl<_DailyScheduleModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyScheduleModel&&(identical(other.city, city) || other.city == city)&&(identical(other.schedule, schedule) || other.schedule == schedule));
}


@override
int get hashCode => Object.hash(runtimeType,city,schedule);

@override
String toString() {
  return 'DailyScheduleModel(city: $city, schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class _$DailyScheduleModelCopyWith<$Res> implements $DailyScheduleModelCopyWith<$Res> {
  factory _$DailyScheduleModelCopyWith(_DailyScheduleModel value, $Res Function(_DailyScheduleModel) _then) = __$DailyScheduleModelCopyWithImpl;
@override @useResult
$Res call({
 CityModel city, ScheduleModel schedule
});


@override $CityModelCopyWith<$Res> get city;@override $ScheduleModelCopyWith<$Res> get schedule;

}
/// @nodoc
class __$DailyScheduleModelCopyWithImpl<$Res>
    implements _$DailyScheduleModelCopyWith<$Res> {
  __$DailyScheduleModelCopyWithImpl(this._self, this._then);

  final _DailyScheduleModel _self;
  final $Res Function(_DailyScheduleModel) _then;

/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? schedule = null,}) {
  return _then(_DailyScheduleModel(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as ScheduleModel,
  ));
}

/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get city {
  
  return $CityModelCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}/// Create a copy of DailyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleModelCopyWith<$Res> get schedule {
  
  return $ScheduleModelCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}
}

// dart format on
