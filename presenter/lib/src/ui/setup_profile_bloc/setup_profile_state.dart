part of 'setup_profile_bloc.dart';

@freezed
class SetupProfileState with _$SetupProfileState {
  const SetupProfileState._();

  bool get rebuild => this is LoadedSetupProfileState;

  const factory SetupProfileState.initial() = _Initial;
  const factory SetupProfileState.loading() = LoadingSetupProfileState;
  const factory SetupProfileState.loaded({
    required Map<String, String> formValidation,
  }) = LoadedSetupProfileState;
  const factory SetupProfileState.success() = _Success;
  const factory SetupProfileState.error({
    String? errorMessage,
  }) = _Error;
  const factory SetupProfileState.confirmReferral({
    required ResellerModel? referral,
  }) = _ConfirmReferral;
}
