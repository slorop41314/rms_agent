part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = LoadingLoginState;
  const factory LoginState.success() = _Success;
  const factory LoginState.error({String? errorMessage}) = _Error;
}
