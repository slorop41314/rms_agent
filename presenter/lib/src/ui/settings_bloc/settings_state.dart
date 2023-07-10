part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  bool get rebuild => this is _Initial || this is _Loaded;

  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loggedOut() = _LoggedOut;
  const factory SettingsState.loaded({
    required ResellerModel profile,
  }) = _Loaded;
}
