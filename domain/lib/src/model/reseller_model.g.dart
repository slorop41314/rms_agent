// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reseller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResellerModel _$$_ResellerModelFromJson(Map<String, dynamic> json) =>
    _$_ResellerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      userId: json['user_id'] as String,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      joinDate: json['join_date'] == null
          ? null
          : DateTime.parse(json['join_date'] as String),
      lastOrderDate: json['last_order_date'] == null
          ? null
          : DateTime.parse(json['last_order_date'] as String),
      active: json['active'] as bool?,
      referredBy: json['referred_by'] as String?,
      referralCode: json['referral_code'] as String?,
      referralLink: json['referral_link'] as String?,
      referredResellers: (json['referred_resellers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      defaultPassword: json['default_password'] as bool,
    );

Map<String, dynamic> _$$_ResellerModelToJson(_$_ResellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'user_id': instance.userId,
      'phone': instance.phone,
      'address': instance.address,
      'join_date': instance.joinDate?.toIso8601String(),
      'last_order_date': instance.lastOrderDate?.toIso8601String(),
      'active': instance.active,
      'referred_by': instance.referredBy,
      'referral_code': instance.referralCode,
      'referral_link': instance.referralLink,
      'referred_resellers': instance.referredResellers,
      'default_password': instance.defaultPassword,
    };
