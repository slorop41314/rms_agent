part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.registerButtonPressed({
    @Default(false) bool confirmedReferral,
    required String fullName,
    required String email,
    required String password,
    required String confirmPassword,
    required String referral,
  }) = _RegisterButtonPressed;
}
