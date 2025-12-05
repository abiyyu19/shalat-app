part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) final List<CityModel> cities,
  }) = _HomeState;
}
