// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScheduleModel {

 DateTime get date; String get parsedDate; String get imsak; String get subuh; String get terbit; String get dhuha; String get dzuhur; String get ashar; String get maghrib; String get isya;
/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleModelCopyWith<ScheduleModel> get copyWith => _$ScheduleModelCopyWithImpl<ScheduleModel>(this as ScheduleModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleModel&&(identical(other.date, date) || other.date == date)&&(identical(other.parsedDate, parsedDate) || other.parsedDate == parsedDate)&&(identical(other.imsak, imsak) || other.imsak == imsak)&&(identical(other.subuh, subuh) || other.subuh == subuh)&&(identical(other.terbit, terbit) || other.terbit == terbit)&&(identical(other.dhuha, dhuha) || other.dhuha == dhuha)&&(identical(other.dzuhur, dzuhur) || other.dzuhur == dzuhur)&&(identical(other.ashar, ashar) || other.ashar == ashar)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isya, isya) || other.isya == isya));
}


@override
int get hashCode => Object.hash(runtimeType,date,parsedDate,imsak,subuh,terbit,dhuha,dzuhur,ashar,maghrib,isya);

@override
String toString() {
  return 'ScheduleModel(date: $date, parsedDate: $parsedDate, imsak: $imsak, subuh: $subuh, terbit: $terbit, dhuha: $dhuha, dzuhur: $dzuhur, ashar: $ashar, maghrib: $maghrib, isya: $isya)';
}


}

/// @nodoc
abstract mixin class $ScheduleModelCopyWith<$Res>  {
  factory $ScheduleModelCopyWith(ScheduleModel value, $Res Function(ScheduleModel) _then) = _$ScheduleModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, String parsedDate, String imsak, String subuh, String terbit, String dhuha, String dzuhur, String ashar, String maghrib, String isya
});




}
/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._self, this._then);

  final ScheduleModel _self;
  final $Res Function(ScheduleModel) _then;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? parsedDate = null,Object? imsak = null,Object? subuh = null,Object? terbit = null,Object? dhuha = null,Object? dzuhur = null,Object? ashar = null,Object? maghrib = null,Object? isya = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
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

}


/// Adds pattern-matching-related methods to [ScheduleModel].
extension ScheduleModelPatterns on ScheduleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScheduleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScheduleModel value)  $default,){
final _that = this;
switch (_that) {
case _ScheduleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScheduleModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  String parsedDate,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that.date,_that.parsedDate,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  String parsedDate,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya)  $default,) {final _that = this;
switch (_that) {
case _ScheduleModel():
return $default(_that.date,_that.parsedDate,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  String parsedDate,  String imsak,  String subuh,  String terbit,  String dhuha,  String dzuhur,  String ashar,  String maghrib,  String isya)?  $default,) {final _that = this;
switch (_that) {
case _ScheduleModel() when $default != null:
return $default(_that.date,_that.parsedDate,_that.imsak,_that.subuh,_that.terbit,_that.dhuha,_that.dzuhur,_that.ashar,_that.maghrib,_that.isya);case _:
  return null;

}
}

}

/// @nodoc


class _ScheduleModel implements ScheduleModel {
  const _ScheduleModel({required this.date, required this.parsedDate, required this.imsak, required this.subuh, required this.terbit, required this.dhuha, required this.dzuhur, required this.ashar, required this.maghrib, required this.isya});
  

@override final  DateTime date;
@override final  String parsedDate;
@override final  String imsak;
@override final  String subuh;
@override final  String terbit;
@override final  String dhuha;
@override final  String dzuhur;
@override final  String ashar;
@override final  String maghrib;
@override final  String isya;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleModelCopyWith<_ScheduleModel> get copyWith => __$ScheduleModelCopyWithImpl<_ScheduleModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleModel&&(identical(other.date, date) || other.date == date)&&(identical(other.parsedDate, parsedDate) || other.parsedDate == parsedDate)&&(identical(other.imsak, imsak) || other.imsak == imsak)&&(identical(other.subuh, subuh) || other.subuh == subuh)&&(identical(other.terbit, terbit) || other.terbit == terbit)&&(identical(other.dhuha, dhuha) || other.dhuha == dhuha)&&(identical(other.dzuhur, dzuhur) || other.dzuhur == dzuhur)&&(identical(other.ashar, ashar) || other.ashar == ashar)&&(identical(other.maghrib, maghrib) || other.maghrib == maghrib)&&(identical(other.isya, isya) || other.isya == isya));
}


@override
int get hashCode => Object.hash(runtimeType,date,parsedDate,imsak,subuh,terbit,dhuha,dzuhur,ashar,maghrib,isya);

@override
String toString() {
  return 'ScheduleModel(date: $date, parsedDate: $parsedDate, imsak: $imsak, subuh: $subuh, terbit: $terbit, dhuha: $dhuha, dzuhur: $dzuhur, ashar: $ashar, maghrib: $maghrib, isya: $isya)';
}


}

/// @nodoc
abstract mixin class _$ScheduleModelCopyWith<$Res> implements $ScheduleModelCopyWith<$Res> {
  factory _$ScheduleModelCopyWith(_ScheduleModel value, $Res Function(_ScheduleModel) _then) = __$ScheduleModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, String parsedDate, String imsak, String subuh, String terbit, String dhuha, String dzuhur, String ashar, String maghrib, String isya
});




}
/// @nodoc
class __$ScheduleModelCopyWithImpl<$Res>
    implements _$ScheduleModelCopyWith<$Res> {
  __$ScheduleModelCopyWithImpl(this._self, this._then);

  final _ScheduleModel _self;
  final $Res Function(_ScheduleModel) _then;

/// Create a copy of ScheduleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? parsedDate = null,Object? imsak = null,Object? subuh = null,Object? terbit = null,Object? dhuha = null,Object? dzuhur = null,Object? ashar = null,Object? maghrib = null,Object? isya = null,}) {
  return _then(_ScheduleModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
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


}

// dart format on
