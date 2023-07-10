part of 'setup_profile_bloc.dart';

@freezed
class SetupProfileEvent with _$SetupProfileEvent {
  const factory SetupProfileEvent.started() = _Started;
  const factory SetupProfileEvent.submitPressed({
    @Default(false) bool confirmedReferral,
    required String referralCode,
    required String fullName,
  }) = _SubmitPressed;
}
