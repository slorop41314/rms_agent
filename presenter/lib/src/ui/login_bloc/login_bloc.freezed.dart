// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends LoginState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingLoginStateCopyWith<$Res> {
  factory _$$LoadingLoginStateCopyWith(
          _$LoadingLoginState value, $Res Function(_$LoadingLoginState) then) =
      __$$LoadingLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLoginState>
    implements _$$LoadingLoginStateCopyWith<$Res> {
  __$$LoadingLoginStateCopyWithImpl(
      _$LoadingLoginState _value, $Res Function(_$LoadingLoginState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLoginState extends LoadingLoginState {
  const _$LoadingLoginState() : super._();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState extends LoginState {
  const factory LoadingLoginState() = _$LoadingLoginState;
  const LoadingLoginState._() : super._();
}

/// @nodoc
abstract class _$$LoadedLoginStateCopyWith<$Res> {
  factory _$$LoadedLoginStateCopyWith(
          _$LoadedLoginState value, $Res Function(_$LoadedLoginState) then) =
      __$$LoadedLoginStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, String> formValidation});
}

/// @nodoc
class __$$LoadedLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadedLoginState>
    implements _$$LoadedLoginStateCopyWith<$Res> {
  __$$LoadedLoginStateCopyWithImpl(
      _$LoadedLoginState _value, $Res Function(_$LoadedLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValidation = null,
  }) {
    return _then(_$LoadedLoginState(
      formValidation: null == formValidation
          ? _value._formValidation
          : formValidation // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$LoadedLoginState extends LoadedLoginState {
  const _$LoadedLoginState({required final Map<String, String> formValidation})
      : _formValidation = formValidation,
        super._();

  final Map<String, String> _formValidation;
  @override
  Map<String, String> get formValidation {
    if (_formValidation is EqualUnmodifiableMapView) return _formValidation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_formValidation);
  }

  @override
  String toString() {
    return 'LoginState.loaded(formValidation: $formValidation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLoginState &&
            const DeepCollectionEquality()
                .equals(other._formValidation, _formValidation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_formValidation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedLoginStateCopyWith<_$LoadedLoginState> get copyWith =>
      __$$LoadedLoginStateCopyWithImpl<_$LoadedLoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) {
    return loaded(formValidation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) {
    return loaded?.call(formValidation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(formValidation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedLoginState extends LoginState {
  const factory LoadedLoginState(
      {required final Map<String, String> formValidation}) = _$LoadedLoginState;
  const LoadedLoginState._() : super._();

  Map<String, String> get formValidation;
  @JsonKey(ignore: true)
  _$$LoadedLoginStateCopyWith<_$LoadedLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends LoginState {
  const factory _Success() = _$_Success;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$$_VerifyEmailCopyWith<$Res> {
  factory _$$_VerifyEmailCopyWith(
          _$_VerifyEmail value, $Res Function(_$_VerifyEmail) then) =
      __$$_VerifyEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyEmailCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_VerifyEmail>
    implements _$$_VerifyEmailCopyWith<$Res> {
  __$$_VerifyEmailCopyWithImpl(
      _$_VerifyEmail _value, $Res Function(_$_VerifyEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerifyEmail extends _VerifyEmail {
  const _$_VerifyEmail() : super._();

  @override
  String toString() {
    return 'LoginState.verifyEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) {
    return verifyEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) {
    return verifyEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmail extends LoginState {
  const factory _VerifyEmail() = _$_VerifyEmail;
  const _VerifyEmail._() : super._();
}

/// @nodoc
abstract class _$$_SetupProfileCopyWith<$Res> {
  factory _$$_SetupProfileCopyWith(
          _$_SetupProfile value, $Res Function(_$_SetupProfile) then) =
      __$$_SetupProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetupProfileCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_SetupProfile>
    implements _$$_SetupProfileCopyWith<$Res> {
  __$$_SetupProfileCopyWithImpl(
      _$_SetupProfile _value, $Res Function(_$_SetupProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetupProfile extends _SetupProfile {
  const _$_SetupProfile() : super._();

  @override
  String toString() {
    return 'LoginState.setupProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetupProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) {
    return setupProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) {
    return setupProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (setupProfile != null) {
      return setupProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) {
    return setupProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) {
    return setupProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (setupProfile != null) {
      return setupProfile(this);
    }
    return orElse();
  }
}

abstract class _SetupProfile extends LoginState {
  const factory _SetupProfile() = _$_SetupProfile;
  const _SetupProfile._() : super._();
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_Error(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({this.errorMessage}) : super._();

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, String> formValidation) loaded,
    required TResult Function() success,
    required TResult Function() verifyEmail,
    required TResult Function() setupProfile,
    required TResult Function(String? errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, String> formValidation)? loaded,
    TResult? Function()? success,
    TResult? Function()? verifyEmail,
    TResult? Function()? setupProfile,
    TResult? Function(String? errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, String> formValidation)? loaded,
    TResult Function()? success,
    TResult Function()? verifyEmail,
    TResult Function()? setupProfile,
    TResult Function(String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_VerifyEmail value) verifyEmail,
    required TResult Function(_SetupProfile value) setupProfile,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_VerifyEmail value)? verifyEmail,
    TResult? Function(_SetupProfile value)? setupProfile,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_VerifyEmail value)? verifyEmail,
    TResult Function(_SetupProfile value)? setupProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends LoginState {
  const factory _Error({final String? errorMessage}) = _$_Error;
  const _Error._() : super._();

  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginButtonPressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LoginButtonPressedCopyWith<$Res> {
  factory _$$_LoginButtonPressedCopyWith(_$_LoginButtonPressed value,
          $Res Function(_$_LoginButtonPressed) then) =
      __$$_LoginButtonPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginButtonPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginButtonPressed>
    implements _$$_LoginButtonPressedCopyWith<$Res> {
  __$$_LoginButtonPressedCopyWithImpl(
      _$_LoginButtonPressed _value, $Res Function(_$_LoginButtonPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginButtonPressed(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginButtonPressed implements _LoginButtonPressed {
  const _$_LoginButtonPressed(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginButtonPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginButtonPressedCopyWith<_$_LoginButtonPressed> get copyWith =>
      __$$_LoginButtonPressedCopyWithImpl<_$_LoginButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) loginButtonPressed,
  }) {
    return loginButtonPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginButtonPressed implements LoginEvent {
  const factory _LoginButtonPressed(final String email, final String password) =
      _$_LoginButtonPressed;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginButtonPressedCopyWith<_$_LoginButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}
