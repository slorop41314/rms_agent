import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_state.dart';
part 'register_event.dart';

part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterWithEmailUseCase _registerWithEmailUseCase;

  RegisterBloc(
    this._registerWithEmailUseCase,
  ) : super(const RegisterState.initial()) {
    on<_Started>(_mapStartedEventToState);
    on<_RegisterButtonPressed>(_mapRegisterButtonPressedEventToState);
  }

  final _formValidations = <String, String>{};

  FutureOr<void> _mapStartedEventToState(
    _Started event,
    Emitter<RegisterState> emit,
  ) async {
    emit(
      RegisterState.loaded(
        formValidation: _formValidations,
      ),
    );
  }

  FutureOr<void> _mapRegisterButtonPressedEventToState(
    _RegisterButtonPressed event,
    Emitter<RegisterState> emit,
  ) async {
    emit(const RegisterState.loading());
    try {
      final registerModel = RegisterRequestModel(
        referralCode: event.referral,
        fullName: event.fullName,
        email: event.email,
        password: event.password,
      );
      await _registerWithEmailUseCase.execute(
        registerModel,
      );

      emit(
        const RegisterState.success(),
      );
    } on AuthException catch (exc) {
      emit(RegisterState.error(errorMessage: exc.message));
    } catch (err) {
      print(err);
      emit(const RegisterState.error());
    }
    //
  }
}
