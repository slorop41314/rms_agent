import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentResellerProfileUseCase {
  final AuthRepository _authRepository;
  final ResellerRepository _resellerRepository;

  GetCurrentResellerProfileUseCase(
    this._authRepository,
    this._resellerRepository,
  );

  Future<ResellerModel?> execute() async {
    final user = await _authRepository.getUserAuth();

    if (user != null) {
      return _resellerRepository.getProfile(user.id);
    }
    return null;
  }
}
