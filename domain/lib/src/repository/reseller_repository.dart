import 'package:domain/domain.dart';

abstract class ResellerRepository {
  Future<ResellerModel> getProfile(
    String userId,
  );

  Future<void> addProfile(
    User userId,
    CreateProfileRequestModel registerModel,
  );

  Future<void> updateProfile(
    ResellerModel profileModel,
  );

  Future<ResellerModel?> getProfileByReferralCode(
    String referralCode,
  );
}
