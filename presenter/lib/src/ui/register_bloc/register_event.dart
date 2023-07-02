part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.registerButtonPressed({
    required String email,
    required String password,
    required String confirmPassword,
    required String referral,
  }) = _RegisterButtonPressed;
}