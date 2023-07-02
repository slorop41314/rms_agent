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
  Future<ResellerModel> getProfile(String userId) {
    return _resellerRemote.getProfile(userId);
  }

  @override
  Future<void> addProfile(
    String userId,
    RegisterRequestModel registerModel,
  ) {
    return _resellerRemote.addProfile(
      userId,
      registerModel,
    );
  }

  @override
  Future<void> updateProfile(ResellerModel profileModel) {
    return _resellerRemote.updateResellerData(profileModel);
  }
}
