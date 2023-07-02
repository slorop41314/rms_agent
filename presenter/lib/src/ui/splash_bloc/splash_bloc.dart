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

  SplashBloc(
    this._getCurrentAuthUserUseCase,
  ) : super(SplashState.initial()) {
    on<_Started>(_mapStartedEventToState);
  }

  FutureOr<void> _mapStartedEventToState(
    _Started event,
    Emitter<SplashState> emit,
  ) async {
    if (await _getCurrentAuthUserUseCase.execute() != null) {
      emit(SplashState.authenticated());
      return;
    }

    emit(SplashState.unauthenticated());
  }
}
