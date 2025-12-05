import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:shalat_app/app/app.dart';
import 'package:shalat_app/data/data.dart';
import 'package:shalat_app/domain/domain.dart';

part './datasource_injection.dart';
part './repository_injection.dart';

final getIt = GetIt.instance;

Future<void> initDI() async {
  log('app flavor: $appFlavor', name: 'InjectionContainer');

  getIt
    ..registerSingleton<Dio>(
      Dio(
        BaseOptions(
          baseUrl: 'https://api.myquran.com/v2',
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
        ),
      ),
    )
    ..registerSingleton<AppRouter>(AppRouter())
    ..registerSingleton<AppDatabase>(AppDatabase());

  await initDataSource();
  await initRepository();
}
