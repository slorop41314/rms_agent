import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:utilities/utilities.dart';

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
      if (!_validateForm(event)) {
        emit(
          RegisterState.loaded(
            formValidation: _formValidations,
          ),
        );
        return;
      }
      await _registerWithEmailUseCase.execute(
        event.email,
        event.password,
      );

      emit(
        const RegisterState.success(),
      );
    } on AuthException catch (exc) {
      emit(RegisterState.error(errorMessage: exc.message));
    } catch (err) {
      emit(const RegisterState.error());
    }
    //
  }

  bool _validateForm(_RegisterButtonPressed event) {
    _formValidations.clear();
    final isEmailValid = FormValidationUtils.isEmail(event.email);
    if (isEmailValid != null) {
      _formValidations['email'] = isEmailValid;
    }
    final isPasswordValid = FormValidationUtils.isPassword(event.password);
    if (isPasswordValid != null) {
      _formValidations['password'] = isPasswordValid;
    }
    final isConfirmPasswordValid = FormValidationUtils.isSamePassword(
      event.password,
      event.confirmPassword,
    );
    if (isConfirmPasswordValid != null) {
      _formValidations['confirmPassword'] = isConfirmPasswordValid;
    }
    return _formValidations.isEmpty;
  }
}
