part of 'main_app_bloc.dart';

@freezed
class MainAppState with _$MainAppState {
  const factory MainAppState.initial() = _Initial;
  const factory MainAppState.authExpired() = _AuthExpired;
}
