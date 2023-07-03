import 'dart:async';

import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:utilities/utilities.dart';
import 'package:uuid/uuid.dart';

@injectable
class ResellerRemote {
  static const RESELLER_TABLE = 'resellers';
  final SupabaseClient _sb;

  ResellerRemote(
    this._sb,
  );

  Future<ResellerModel> getProfile(String userId) async {
    final data = await _sb
        .from(RESELLER_TABLE)
        .select()
        .eq(
          'user_id',
          userId,
        )
        .single();
    return ResellerModel.fromJson(data);
  }

  Future<void> addProfile(
    String userId,
    RegisterRequestModel registerModel,
  ) async {
    final resellerModel = ResellerModel(
      id: const Uuid().v4(),
      name: registerModel.fullName,
      email: registerModel.email,
      userId: userId,
      defaultPassword: false,
      referralCode: StringUtils.generateUniqueCode(8),
      isApproved: registerModel.referredByUser != null ? true : false,
      referredBy: registerModel.referredByUser?.id,
    );
    return _sb.from(RESELLER_TABLE).insert(resellerModel.toJson());
  }

  Future<void> updateResellerData(ResellerModel profileModel) async {
    return _sb.from(RESELLER_TABLE).update(profileModel.toJson());
  }

  Future<ResellerModel?> getProfileByReferralCode(String referralCode) async {
    final data = await _sb
        .from(RESELLER_TABLE)
        .select()
        .eq(
          'referral_code',
          referralCode,
        )
        .maybeSingle();
    return data != null ? ResellerModel.fromJson(data) : null;
  }
}
