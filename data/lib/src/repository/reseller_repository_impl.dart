import 'package:data/src/remote/reseller_remote.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ResellerRepository)
class ResellerRepositoryImpl implements ResellerRepository {
  final ResellerRemote _resellerRemote;

  ResellerRepositoryImpl(
    this._resellerRemote,
  );

  @override
  Future<ResellerModel?> getProfile(String userId) {
    return _resellerRemote.getProfile(userId);
  }

  @override
  Future<void> addProfile(
    User user,
    CreateProfileRequestModel registerModel,
  ) {
    return _resellerRemote.addProfile(
      user,
      registerModel,
    );
  }

  @override
  Future<void> updateProfile(ResellerModel profileModel) {
    return _resellerRemote.updateResellerData(profileModel);
  }

  @override
  Future<ResellerModel?> getProfileByReferralCode(String referralCode) {
    return _resellerRemote.getProfileByReferralCode(referralCode);
  }
}
