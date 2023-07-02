part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  bool get rebuild => this is LoadedLoginState;

  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = LoadingLoginState;
  const factory LoginState.loaded({
    required Map<String, String> formValidation,
  }) = LoadedLoginState;
  const factory LoginState.success() = _Success;
  const factory LoginState.error({String? errorMessage}) = _Error;
}
