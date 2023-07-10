import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetResellerProfileByReferralCodeUseCase {
  final ResellerRepository _resellerRepository;

  GetResellerProfileByReferralCodeUseCase(
    this._resellerRepository,
  );

  Future<ResellerModel?> execute(String referralCode) async {
    return _resellerRepository.getProfileByReferralCode(referralCode);
  }
}
