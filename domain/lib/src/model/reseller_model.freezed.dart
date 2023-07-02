// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reseller_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResellerModel _$ResellerModelFromJson(Map<String, dynamic> json) {
  return _ResellerModel.fromJson(json);
}

/// @nodoc
mixin _$ResellerModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'join_date')
  DateTime? get joinDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_order_date')
  DateTime? get lastOrderDate => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'referred_by')
  String? get referredBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_code')
  String? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_link')
  String? get referralLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'referred_resellers')
  List<String>? get referredResellers => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_password')
  bool get defaultPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResellerModelCopyWith<ResellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResellerModelCopyWith<$Res> {
  factory $ResellerModelCopyWith(
          ResellerModel value, $Res Function(ResellerModel) then) =
      _$ResellerModelCopyWithImpl<$Res, ResellerModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      @JsonKey(name: 'user_id') String userId,
      String? phone,
      String? address,
      @JsonKey(name: 'join_date') DateTime? joinDate,
      @JsonKey(name: 'last_order_date') DateTime? lastOrderDate,
      bool? active,
      @JsonKey(name: 'referred_by') String? referredBy,
      @JsonKey(name: 'referral_code') String? referralCode,
      @JsonKey(name: 'referral_link') String? referralLink,
      @JsonKey(name: 'referred_resellers') List<String>? referredResellers,
      @JsonKey(name: 'default_password') bool defaultPassword});
}

/// @nodoc
class _$ResellerModelCopyWithImpl<$Res, $Val extends ResellerModel>
    implements $ResellerModelCopyWith<$Res> {
  _$ResellerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? userId = null,
    Object? phone = freezed,
    Object? address = freezed,
    Object? joinDate = freezed,
    Object? lastOrderDate = freezed,
    Object? active = freezed,
    Object? referredBy = freezed,
    Object? referralCode = freezed,
    Object? referralLink = freezed,
    Object? referredResellers = freezed,
    Object? defaultPassword = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      joinDate: freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastOrderDate: freezed == lastOrderDate
          ? _value.lastOrderDate
          : lastOrderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralLink: freezed == referralLink
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String?,
      referredResellers: freezed == referredResellers
          ? _value.referredResellers
          : referredResellers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultPassword: null == defaultPassword
          ? _value.defaultPassword
          : defaultPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResellerModelCopyWith<$Res>
    implements $ResellerModelCopyWith<$Res> {
  factory _$$_ResellerModelCopyWith(
          _$_ResellerModel value, $Res Function(_$_ResellerModel) then) =
      __$$_ResellerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      @JsonKey(name: 'user_id') String userId,
      String? phone,
      String? address,
      @JsonKey(name: 'join_date') DateTime? joinDate,
      @JsonKey(name: 'last_order_date') DateTime? lastOrderDate,
      bool? active,
      @JsonKey(name: 'referred_by') String? referredBy,
      @JsonKey(name: 'referral_code') String? referralCode,
      @JsonKey(name: 'referral_link') String? referralLink,
      @JsonKey(name: 'referred_resellers') List<String>? referredResellers,
      @JsonKey(name: 'default_password') bool defaultPassword});
}

/// @nodoc
class __$$_ResellerModelCopyWithImpl<$Res>
    extends _$ResellerModelCopyWithImpl<$Res, _$_ResellerModel>
    implements _$$_ResellerModelCopyWith<$Res> {
  __$$_ResellerModelCopyWithImpl(
      _$_ResellerModel _value, $Res Function(_$_ResellerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? userId = null,
    Object? phone = freezed,
    Object? address = freezed,
    Object? joinDate = freezed,
    Object? lastOrderDate = freezed,
    Object? active = freezed,
    Object? referredBy = freezed,
    Object? referralCode = freezed,
    Object? referralLink = freezed,
    Object? referredResellers = freezed,
    Object? defaultPassword = null,
  }) {
    return _then(_$_ResellerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      joinDate: freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastOrderDate: freezed == lastOrderDate
          ? _value.lastOrderDate
          : lastOrderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralLink: freezed == referralLink
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String?,
      referredResellers: freezed == referredResellers
          ? _value._referredResellers
          : referredResellers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultPassword: null == defaultPassword
          ? _value.defaultPassword
          : defaultPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResellerModel implements _ResellerModel {
  const _$_ResellerModel(
      {required this.id,
      required this.name,
      required this.email,
      @JsonKey(name: 'user_id') required this.userId,
      this.phone,
      this.address,
      @JsonKey(name: 'join_date') this.joinDate,
      @JsonKey(name: 'last_order_date') this.lastOrderDate,
      this.active,
      @JsonKey(name: 'referred_by') this.referredBy,
      @JsonKey(name: 'referral_code') this.referralCode,
      @JsonKey(name: 'referral_link') this.referralLink,
      @JsonKey(name: 'referred_resellers')
      final List<String>? referredResellers,
      @JsonKey(name: 'default_password') required this.defaultPassword})
      : _referredResellers = referredResellers;

  factory _$_ResellerModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResellerModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  @JsonKey(name: 'join_date')
  final DateTime? joinDate;
  @override
  @JsonKey(name: 'last_order_date')
  final DateTime? lastOrderDate;
  @override
  final bool? active;
  @override
  @JsonKey(name: 'referred_by')
  final String? referredBy;
  @override
  @JsonKey(name: 'referral_code')
  final String? referralCode;
  @override
  @JsonKey(name: 'referral_link')
  final String? referralLink;
  final List<String>? _referredResellers;
  @override
  @JsonKey(name: 'referred_resellers')
  List<String>? get referredResellers {
    final value = _referredResellers;
    if (value == null) return null;
    if (_referredResellers is EqualUnmodifiableListView)
      return _referredResellers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'default_password')
  final bool defaultPassword;

  @override
  String toString() {
    return 'ResellerModel(id: $id, name: $name, email: $email, userId: $userId, phone: $phone, address: $address, joinDate: $joinDate, lastOrderDate: $lastOrderDate, active: $active, referredBy: $referredBy, referralCode: $referralCode, referralLink: $referralLink, referredResellers: $referredResellers, defaultPassword: $defaultPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResellerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate) &&
            (identical(other.lastOrderDate, lastOrderDate) ||
                other.lastOrderDate == lastOrderDate) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.referralLink, referralLink) ||
                other.referralLink == referralLink) &&
            const DeepCollectionEquality()
                .equals(other._referredResellers, _referredResellers) &&
            (identical(other.defaultPassword, defaultPassword) ||
                other.defaultPassword == defaultPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      userId,
      phone,
      address,
      joinDate,
      lastOrderDate,
      active,
      referredBy,
      referralCode,
      referralLink,
      const DeepCollectionEquality().hash(_referredResellers),
      defaultPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResellerModelCopyWith<_$_ResellerModel> get copyWith =>
      __$$_ResellerModelCopyWithImpl<_$_ResellerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResellerModelToJson(
      this,
    );
  }
}

abstract class _ResellerModel implements ResellerModel {
  const factory _ResellerModel(
      {required final String id,
      required final String name,
      required final String email,
      @JsonKey(name: 'user_id') required final String userId,
      final String? phone,
      final String? address,
      @JsonKey(name: 'join_date') final DateTime? joinDate,
      @JsonKey(name: 'last_order_date') final DateTime? lastOrderDate,
      final bool? active,
      @JsonKey(name: 'referred_by') final String? referredBy,
      @JsonKey(name: 'referral_code') final String? referralCode,
      @JsonKey(name: 'referral_link') final String? referralLink,
      @JsonKey(name: 'referred_resellers')
      final List<String>? referredResellers,
      @JsonKey(name: 'default_password')
      required final bool defaultPassword}) = _$_ResellerModel;

  factory _ResellerModel.fromJson(Map<String, dynamic> json) =
      _$_ResellerModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  @JsonKey(name: 'join_date')
  DateTime? get joinDate;
  @override
  @JsonKey(name: 'last_order_date')
  DateTime? get lastOrderDate;
  @override
  bool? get active;
  @override
  @JsonKey(name: 'referred_by')
  String? get referredBy;
  @override
  @JsonKey(name: 'referral_code')
  String? get referralCode;
  @override
  @JsonKey(name: 'referral_link')
  String? get referralLink;
  @override
  @JsonKey(name: 'referred_resellers')
  List<String>? get referredResellers;
  @override
  @JsonKey(name: 'default_password')
  bool get defaultPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ResellerModelCopyWith<_$_ResellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
