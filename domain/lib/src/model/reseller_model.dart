import 'package:freezed_annotation/freezed_annotation.dart';

part 'reseller_model.freezed.dart';
part 'reseller_model.g.dart';

@freezed
abstract class ResellerModel with _$ResellerModel {
  const factory ResellerModel({
    required String id,
    required String name,
    required String email,
    @JsonKey(name: 'user_id') required String userId,
    String? phone,
    String? address,
    @JsonKey(name: 'join_date') final DateTime? joinDate,
    @JsonKey(name: 'last_order_date') final DateTime? lastOrderDate,
    final bool? active,
    @JsonKey(name: 'referred_by') final String? referredBy,
    @JsonKey(name: 'referral_code') final String? referralCode,
    @JsonKey(name: 'default_password') required bool defaultPassword,
    @JsonKey(name: 'is_approved') required bool isApproved,
  }) = _ResellerModel;

  factory ResellerModel.fromJson(Map<String, dynamic> json) =>
      _$ResellerModelFromJson(json);
}
