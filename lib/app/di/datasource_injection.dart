part of './dependency_injection.dart';

Future<void> initDataSource() async {
  getIt
    ..registerLazySingleton<CityLocal>(() => CityDao(getIt()))
    ..registerLazySingleton<CityRemote>(() => CityRemoteImpl(dio: getIt()));
}
