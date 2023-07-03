import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:utilities/utilities.dart';

part 'login_state.dart';
part 'login_event.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginWithEmailUseCase _loginWithEmailUseCase;

  LoginBloc(
    this._loginWithEmailUseCase,
  ) : super(const LoginState.initial()) {
    on<_Started>(_mapStartedEventToState);
    on<_LoginButtonPressed>(_mapLoginButtonPressedEventToState);
  }

  final _formValidations = <String, String>{};

  FutureOr<void> _mapStartedEventToState(
    _Started event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      LoginState.loaded(
        formValidation: _formValidations,
      ),
    );
  }

  FutureOr<void> _mapLoginButtonPressedEventToState(
    _LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());
    try {
      if (!_validateForm(event)) {
        emit(
          LoginState.loaded(
            formValidation: _formValidations,
          ),
        );
        return;
      }
      await _loginWithEmailUseCase.execute(
        event.email,
        event.password,
      );

      emit(
        const LoginState.success(),
      );
    } on AuthException catch (exc) {
      emit(LoginState.error(errorMessage: exc.message));
    } catch (err) {
      emit(const LoginState.error());
    }
  }

  bool _validateForm(_LoginButtonPressed event) {
    _formValidations.clear();
    final isEmailValid = FormValidationUtils.isEmail(event.email);
    if (isEmailValid != null) {
      _formValidations['email'] = isEmailValid;
    }
    final isPasswordValid = FormValidationUtils.isPassword(event.password);
    if (isPasswordValid != null) {
      _formValidations['password'] = isPasswordValid;
    }
    return _formValidations.isEmpty;
  }
}
