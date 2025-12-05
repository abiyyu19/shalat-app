import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shalat_app/core/core.dart';
import 'package:shalat_app/domain/domain.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    final CityRepository cityRepository,
  ) : _cityRepository = cityRepository,
      super(const HomeState()) {
    on<_Started>(_onStarted);
  }

  final CityRepository _cityRepository;

  @override
  void onError(Object error, StackTrace stackTrace) {
    log('err: $error', name: 'HomeBloc');
    super.onError(error, stackTrace);
  }

  Future<void> _onStarted(
    final HomeEvent event,
    final Emitter<HomeState> emit,
  ) async {
    final cityRes = await _cityRepository.getAllCity();

    if (cityRes is Error<List<CityModel>>) {
      addError(cityRes.error);
      return;
    }
    final cities = (cityRes as Ok<List<CityModel>>).value;
    emit(state.copyWith(cities: cities));

    for (final city in cities) {
      log('city: ${city.name}', name: 'HomeBloc');
    }
  }
}
