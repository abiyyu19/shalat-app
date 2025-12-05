part of './dependency_injection.dart';

Future<void> initRepository() async {
  getIt.registerLazySingleton<CityRepository>(
    () => CityRepositoryImpl(
      cityLocal: getIt(),
      cityRemote: getIt(),
    ),
  );
}
