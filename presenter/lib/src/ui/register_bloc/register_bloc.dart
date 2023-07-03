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
  final GetResellerProfileByReferralCodeUseCase
      _getResellerProfileByReferralCodeUseCase;

  RegisterBloc(
    this._registerWithEmailUseCase,
    this._getResellerProfileByReferralCodeUseCase,
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
      if (event.referral.trim().isNotEmpty && !event.confirmedReferral) {
        final referral = await _getResellerProfileByReferralCodeUseCase.execute(
          event.referral,
        );
        emit(
          RegisterState.confirmReferral(
            referral: referral,
          ),
        );
        return;
      }
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
    final isNameValid = FormValidationUtils.isNotEmpty(event.fullName);
    if (isNameValid != null) {
      _formValidations['fullName'] = isNameValid;
    }
    return _formValidations.isEmpty;
  }
}
