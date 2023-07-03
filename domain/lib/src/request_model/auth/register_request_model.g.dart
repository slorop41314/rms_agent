// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequestModel _$$_RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterRequestModel(
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      referralCode: json['referralCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      referredByUser: json['referredByUser'] == null
          ? null
          : ResellerModel.fromJson(
              json['referredByUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterRequestModelToJson(
        _$_RegisterRequestModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'referralCode': instance.referralCode,
      'phoneNumber': instance.phoneNumber,
      'referredByUser': instance.referredByUser,
    };
