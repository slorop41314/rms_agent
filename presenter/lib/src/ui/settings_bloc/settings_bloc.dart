import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_state.dart';
part 'settings_event.dart';

part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetCurrentResellerProfileUseCase _getCurrentResellerProfileUseCase;
  final LogoutUseCase _logoutUseCase;

  SettingsBloc(
    this._getCurrentResellerProfileUseCase,
    this._logoutUseCase,
  ) : super(const SettingsState.initial()) {
    on<_Started>(_mapStartedEventToState);
    on<_Logout>(_mapLogOutEventToState);
  }

  FutureOr<void> _mapStartedEventToState(
    _Started event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final res = await _getCurrentResellerProfileUseCase.execute();
      if (res == null) {
        return;
      }
      emit(
        SettingsState.loaded(profile: res),
      );
    } catch (err) {
      //
    }
  }

  FutureOr<void> _mapLogOutEventToState(
    _Logout event,
    Emitter<SettingsState> emit,
  ) async {
    await _logoutUseCase.execute();
  }
}
