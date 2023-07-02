part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  bool get rebuild => this is LoadedRegisterState;

  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = LoadingRegisterState;
  const factory RegisterState.loaded({
    required Map<String, String> formValidation,
  }) = LoadedRegisterState;
  const factory RegisterState.success() = _Success;
  const factory RegisterState.error({String? errorMessage}) = _Error;
}
