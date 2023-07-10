import 'package:domain/src/model/reseller_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_profile_request_model.freezed.dart';
part 'create_profile_request_model.g.dart';

@freezed
class CreateProfileRequestModel with _$CreateProfileRequestModel {
  const factory CreateProfileRequestModel({
    required String fullName,
    String? referralCode,
    String? phoneNumber,
    ResellerModel? referredByUser,
  }) = _CreateProfileRequestModel;

  factory CreateProfileRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProfileRequestModelFromJson(json);
}
