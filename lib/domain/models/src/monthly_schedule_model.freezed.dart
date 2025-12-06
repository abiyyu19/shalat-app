// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MonthlyScheduleModel {

 CityModel get city; List<ScheduleModel> get schedule;
/// Create a copy of MonthlyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyScheduleModelCopyWith<MonthlyScheduleModel> get copyWith => _$MonthlyScheduleModelCopyWithImpl<MonthlyScheduleModel>(this as MonthlyScheduleModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyScheduleModel&&(identical(other.city, city) || other.city == city)&&const DeepCollectionEquality().equals(other.schedule, schedule));
}


@override
int get hashCode => Object.hash(runtimeType,city,const DeepCollectionEquality().hash(schedule));

@override
String toString() {
  return 'MonthlyScheduleModel(city: $city, schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class $MonthlyScheduleModelCopyWith<$Res>  {
  factory $MonthlyScheduleModelCopyWith(MonthlyScheduleModel value, $Res Function(MonthlyScheduleModel) _then) = _$MonthlyScheduleModelCopyWithImpl;
@useResult
$Res call({
 CityModel city, List<ScheduleModel> schedule
});


$CityModelCopyWith<$Res> get city;

}
/// @nodoc
class _$MonthlyScheduleModelCopyWithImpl<$Res>
    implements $MonthlyScheduleModelCopyWith<$Res> {
  _$MonthlyScheduleModelCopyWithImpl(this._self, this._then);

  final MonthlyScheduleModel _self;
  final $Res Function(MonthlyScheduleModel) _then;

/// Create a copy of MonthlyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? schedule = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<ScheduleModel>,
  ));
}
/// Create a copy of MonthlyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get city {
  
  return $CityModelCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}


/// Adds pattern-matching-related methods to [MonthlyScheduleModel].
extension MonthlyScheduleModelPatterns on MonthlyScheduleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyScheduleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyScheduleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyScheduleModel value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyScheduleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyScheduleModel value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyScheduleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CityModel city,  List<ScheduleModel> schedule)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyScheduleModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CityModel city,  List<ScheduleModel> schedule)  $default,) {final _that = this;
switch (_that) {
case _MonthlyScheduleModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CityModel city,  List<ScheduleModel> schedule)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyScheduleModel() when $default != null:
return $default(_that.city,_that.schedule);case _:
  return null;

}
}

}

/// @nodoc


class _MonthlyScheduleModel implements MonthlyScheduleModel {
  const _MonthlyScheduleModel({required this.city, required final  List<ScheduleModel> schedule}): _schedule = schedule;
  

@override final  CityModel city;
 final  List<ScheduleModel> _schedule;
@override List<ScheduleModel> get schedule {
  if (_schedule is EqualUnmodifiableListView) return _schedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_schedule);
}


/// Create a copy of MonthlyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyScheduleModelCopyWith<_MonthlyScheduleModel> get copyWith => __$MonthlyScheduleModelCopyWithImpl<_MonthlyScheduleModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyScheduleModel&&(identical(other.city, city) || other.city == city)&&const DeepCollectionEquality().equals(other._schedule, _schedule));
}


@override
int get hashCode => Object.hash(runtimeType,city,const DeepCollectionEquality().hash(_schedule));

@override
String toString() {
  return 'MonthlyScheduleModel(city: $city, schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class _$MonthlyScheduleModelCopyWith<$Res> implements $MonthlyScheduleModelCopyWith<$Res> {
  factory _$MonthlyScheduleModelCopyWith(_MonthlyScheduleModel value, $Res Function(_MonthlyScheduleModel) _then) = __$MonthlyScheduleModelCopyWithImpl;
@override @useResult
$Res call({
 CityModel city, List<ScheduleModel> schedule
});


@override $CityModelCopyWith<$Res> get city;

}
/// @nodoc
class __$MonthlyScheduleModelCopyWithImpl<$Res>
    implements _$MonthlyScheduleModelCopyWith<$Res> {
  __$MonthlyScheduleModelCopyWithImpl(this._self, this._then);

  final _MonthlyScheduleModel _self;
  final $Res Function(_MonthlyScheduleModel) _then;

/// Create a copy of MonthlyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? schedule = null,}) {
  return _then(_MonthlyScheduleModel(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityModel,schedule: null == schedule ? _self._schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<ScheduleModel>,
  ));
}

/// Create a copy of MonthlyScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get city {
  
  return $CityModelCopyWith<$Res>(_self.city, (value) {
    return _then(_self.copyWith(city: value));
  });
}
}

// dart format on
