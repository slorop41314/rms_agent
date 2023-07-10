import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateUserProfileUseCase {
  final AuthRepository _authRepository;
  final ResellerRepository _resellerRepository;

  CreateUserProfileUseCase(
    this._authRepository,
    this._resellerRepository,
  );

  Future<void> execute(CreateProfileRequestModel model) async {
    final res = await _authRepository.getUserAuth();
    if (res == null) {
      return;
    }
    await _resellerRepository.addProfile(res, model);
  }
}
