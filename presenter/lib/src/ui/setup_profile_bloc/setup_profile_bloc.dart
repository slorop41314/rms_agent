import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:utilities/utilities.dart';

part 'setup_profile_state.dart';
part 'setup_profile_event.dart';

part 'setup_profile_bloc.freezed.dart';

@injectable
class SetupProfileBloc extends Bloc<SetupProfileEvent, SetupProfileState> {
  final CreateUserProfileUseCase _createUserProfileUseCase;
  final GetResellerProfileByReferralCodeUseCase
      _getResellerProfileByReferralCodeUseCase;

  SetupProfileBloc(
    this._createUserProfileUseCase,
    this._getResellerProfileByReferralCodeUseCase,
  ) : super(const SetupProfileState.initial()) {
    on<_Started>(_mapStartedEventToState);
    on<_SubmitPressed>(_mapSetupProfileButtonPressedEventToState);
  }

  final _formValidations = <String, String>{};

  FutureOr<void> _mapStartedEventToState(
    _Started event,
    Emitter<SetupProfileState> emit,
  ) async {
    emit(
      SetupProfileState.loaded(
        formValidation: _formValidations,
      ),
    );
  }

  FutureOr<void> _mapSetupProfileButtonPressedEventToState(
    _SubmitPressed event,
    Emitter<SetupProfileState> emit,
  ) async {
    emit(const SetupProfileState.loading());
    try {
      if (!_validateForm(event)) {
        emit(
          SetupProfileState.loaded(
            formValidation: _formValidations,
          ),
        );
        return;
      }
      if (event.referralCode.trim().isNotEmpty && !event.confirmedReferral) {
        final referral = await _getResellerProfileByReferralCodeUseCase.execute(
          event.referralCode,
        );
        emit(
          SetupProfileState.confirmReferral(
            referral: referral,
          ),
        );
        return;
      }

      final referral = await _getResellerProfileByReferralCodeUseCase.execute(
        event.referralCode,
      );
      final reqModel = CreateProfileRequestModel(
        fullName: event.fullName,
        referralCode: referral != null ? event.referralCode : null,
        referredByUser: referral != null ? referral : null,
      );
      await _createUserProfileUseCase.execute(reqModel);

      emit(
        const SetupProfileState.success(),
      );
    } on AuthException catch (exc) {
      emit(SetupProfileState.error(errorMessage: exc.message));
    } catch (err) {
      emit(const SetupProfileState.error());
    }
    //
  }

  bool _validateForm(_SubmitPressed event) {
    _formValidations.clear();
    final isNameValid = FormValidationUtils.isNotEmpty(event.fullName);
    if (isNameValid != null) {
      _formValidations['fullName'] = isNameValid;
    }
    return _formValidations.isEmpty;
  }
}
