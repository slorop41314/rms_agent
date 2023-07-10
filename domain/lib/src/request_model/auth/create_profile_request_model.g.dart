// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProfileRequestModel _$$_CreateProfileRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateProfileRequestModel(
      fullName: json['fullName'] as String,
      referralCode: json['referralCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      referredByUser: json['referredByUser'] == null
          ? null
          : ResellerModel.fromJson(
              json['referredByUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateProfileRequestModelToJson(
        _$_CreateProfileRequestModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'referralCode': instance.referralCode,
      'phoneNumber': instance.phoneNumber,
      'referredByUser': instance.referredByUser,
    };
