import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_state.dart';
part 'splash_event.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetCurrentAuthUserUseCase _getCurrentAuthUserUseCase;
  final GetCurrentResellerProfileUseCase _getCurrentResellerProfileUseCase;

  SplashBloc(
    this._getCurrentAuthUserUseCase,
    this._getCurrentResellerProfileUseCase,
  ) : super(const SplashState.initial()) {
    on<_Started>(_mapStartedEventToState);
  }

  FutureOr<void> _mapStartedEventToState(
    _Started event,
    Emitter<SplashState> emit,
  ) async {
    final user = await _getCurrentAuthUserUseCase.execute();
    if (user == null) {
      emit(const SplashState.unauthenticated());
      return;
    }
    final userProfile = await _getCurrentResellerProfileUseCase.execute();
    if (userProfile == null) {
      emit(const SplashState.createProfile());
      return;
    }
    emit(const SplashState.authenticated());
    return;
  }
}
