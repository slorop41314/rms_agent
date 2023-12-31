import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_app_state.dart';
part 'main_app_event.dart';

part 'main_app_bloc.freezed.dart';

@injectable
class MainAppBloc extends Bloc<MainAppEvent, MainAppState> {
  final ListenAuthEventChangeUseCase _listenAuthEventChangeUseCase;

  MainAppBloc(
    this._listenAuthEventChangeUseCase,
  ) : super(const MainAppState.initial()) {
    on<_Started>(_mapStartedEventToState);
  }

  FutureOr<void> _mapStartedEventToState(
    _Started event,
    Emitter<MainAppState> emit,
  ) async {
    await emit.forEach(
      this._listenAuthEventChangeUseCase.execute(),
      onData: (event) {
        if (event.event == AuthChangeEvent.signedOut) {
          return const MainAppState.authExpired();
        }

        return const MainAppState.initial();
      },
    );
  }
}
