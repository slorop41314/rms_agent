// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProfileRequestModel _$CreateProfileRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateProfileRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateProfileRequestModel {
  String get fullName => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  ResellerModel? get referredByUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProfileRequestModelCopyWith<CreateProfileRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileRequestModelCopyWith<$Res> {
  factory $CreateProfileRequestModelCopyWith(CreateProfileRequestModel value,
          $Res Function(CreateProfileRequestModel) then) =
      _$CreateProfileRequestModelCopyWithImpl<$Res, CreateProfileRequestModel>;
  @useResult
  $Res call(
      {String fullName,
      String? referralCode,
      String? phoneNumber,
      ResellerModel? referredByUser});

  $ResellerModelCopyWith<$Res>? get referredByUser;
}

/// @nodoc
class _$CreateProfileRequestModelCopyWithImpl<$Res,
        $Val extends CreateProfileRequestModel>
    implements $CreateProfileRequestModelCopyWith<$Res> {
  _$CreateProfileRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? referralCode = freezed,
    Object? phoneNumber = freezed,
    Object? referredByUser = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      referredByUser: freezed == referredByUser
          ? _value.referredByUser
          : referredByUser // ignore: cast_nullable_to_non_nullable
              as ResellerModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResellerModelCopyWith<$Res>? get referredByUser {
    if (_value.referredByUser == null) {
      return null;
    }

    return $ResellerModelCopyWith<$Res>(_value.referredByUser!, (value) {
      return _then(_value.copyWith(referredByUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateProfileRequestModelCopyWith<$Res>
    implements $CreateProfileRequestModelCopyWith<$Res> {
  factory _$$_CreateProfileRequestModelCopyWith(
          _$_CreateProfileRequestModel value,
          $Res Function(_$_CreateProfileRequestModel) then) =
      __$$_CreateProfileRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String? referralCode,
      String? phoneNumber,
      ResellerModel? referredByUser});

  @override
  $ResellerModelCopyWith<$Res>? get referredByUser;
}

/// @nodoc
class __$$_CreateProfileRequestModelCopyWithImpl<$Res>
    extends _$CreateProfileRequestModelCopyWithImpl<$Res,
        _$_CreateProfileRequestModel>
    implements _$$_CreateProfileRequestModelCopyWith<$Res> {
  __$$_CreateProfileRequestModelCopyWithImpl(
      _$_CreateProfileRequestModel _value,
      $Res Function(_$_CreateProfileRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? referralCode = freezed,
    Object? phoneNumber = freezed,
    Object? referredByUser = freezed,
  }) {
    return _then(_$_CreateProfileRequestModel(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      referredByUser: freezed == referredByUser
          ? _value.referredByUser
          : referredByUser // ignore: cast_nullable_to_non_nullable
              as ResellerModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProfileRequestModel implements _CreateProfileRequestModel {
  const _$_CreateProfileRequestModel(
      {required this.fullName,
      this.referralCode,
      this.phoneNumber,
      this.referredByUser});

  factory _$_CreateProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateProfileRequestModelFromJson(json);

  @override
  final String fullName;
  @override
  final String? referralCode;
  @override
  final String? phoneNumber;
  @override
  final ResellerModel? referredByUser;

  @override
  String toString() {
    return 'CreateProfileRequestModel(fullName: $fullName, referralCode: $referralCode, phoneNumber: $phoneNumber, referredByUser: $referredByUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateProfileRequestModel &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.referredByUser, referredByUser) ||
                other.referredByUser == referredByUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, referralCode, phoneNumber, referredByUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateProfileRequestModelCopyWith<_$_CreateProfileRequestModel>
      get copyWith => __$$_CreateProfileRequestModelCopyWithImpl<
          _$_CreateProfileRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateProfileRequestModelToJson(
      this,
    );
  }
}

abstract class _CreateProfileRequestModel implements CreateProfileRequestModel {
  const factory _CreateProfileRequestModel(
      {required final String fullName,
      final String? referralCode,
      final String? phoneNumber,
      final ResellerModel? referredByUser}) = _$_CreateProfileRequestModel;

  factory _CreateProfileRequestModel.fromJson(Map<String, dynamic> json) =
      _$_CreateProfileRequestModel.fromJson;

  @override
  String get fullName;
  @override
  String? get referralCode;
  @override
  String? get phoneNumber;
  @override
  ResellerModel? get referredByUser;
  @override
  @JsonKey(ignore: true)
  _$$_CreateProfileRequestModelCopyWith<_$_CreateProfileRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
