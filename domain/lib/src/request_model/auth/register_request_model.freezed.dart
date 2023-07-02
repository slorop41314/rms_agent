// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterRequestModel _$RegisterRequestModelFromJson(Map<String, dynamic> json) {
  return _RegisterRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequestModel {
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRequestModelCopyWith<RegisterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestModelCopyWith<$Res> {
  factory $RegisterRequestModelCopyWith(RegisterRequestModel value,
          $Res Function(RegisterRequestModel) then) =
      _$RegisterRequestModelCopyWithImpl<$Res, RegisterRequestModel>;
  @useResult
  $Res call(
      {String fullName,
      String email,
      String password,
      String? referralCode,
      String? phoneNumber});
}

/// @nodoc
class _$RegisterRequestModelCopyWithImpl<$Res,
        $Val extends RegisterRequestModel>
    implements $RegisterRequestModelCopyWith<$Res> {
  _$RegisterRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? password = null,
    Object? referralCode = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterRequestModelCopyWith<$Res>
    implements $RegisterRequestModelCopyWith<$Res> {
  factory _$$_RegisterRequestModelCopyWith(_$_RegisterRequestModel value,
          $Res Function(_$_RegisterRequestModel) then) =
      __$$_RegisterRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String email,
      String password,
      String? referralCode,
      String? phoneNumber});
}

/// @nodoc
class __$$_RegisterRequestModelCopyWithImpl<$Res>
    extends _$RegisterRequestModelCopyWithImpl<$Res, _$_RegisterRequestModel>
    implements _$$_RegisterRequestModelCopyWith<$Res> {
  __$$_RegisterRequestModelCopyWithImpl(_$_RegisterRequestModel _value,
      $Res Function(_$_RegisterRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? password = null,
    Object? referralCode = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_RegisterRequestModel(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterRequestModel implements _RegisterRequestModel {
  const _$_RegisterRequestModel(
      {required this.fullName,
      required this.email,
      required this.password,
      this.referralCode,
      this.phoneNumber});

  factory _$_RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterRequestModelFromJson(json);

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String? referralCode;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'RegisterRequestModel(fullName: $fullName, email: $email, password: $password, referralCode: $referralCode, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterRequestModel &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, email, password, referralCode, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterRequestModelCopyWith<_$_RegisterRequestModel> get copyWith =>
      __$$_RegisterRequestModelCopyWithImpl<_$_RegisterRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterRequestModelToJson(
      this,
    );
  }
}

abstract class _RegisterRequestModel implements RegisterRequestModel {
  const factory _RegisterRequestModel(
      {required final String fullName,
      required final String email,
      required final String password,
      final String? referralCode,
      final String? phoneNumber}) = _$_RegisterRequestModel;

  factory _RegisterRequestModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterRequestModel.fromJson;

  @override
  String get fullName;
  @override
  String get email;
  @override
  String get password;
  @override
  String? get referralCode;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterRequestModelCopyWith<_$_RegisterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
