import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterWithEmailUseCase {
  final AuthRepository _authRepository;
  final ResellerRepository _resellerRepository;

  RegisterWithEmailUseCase(
    this._authRepository,
    this._resellerRepository,
  );

  Future<AuthResponse> execute(RegisterRequestModel model) async {
    final res = await _authRepository.registerWithEmail(
      model.email,
      model.password,
    );
    final userId = res.user?.id;
    if (userId == null) {
      return res;
    }
    await _resellerRepository.addProfile(
      userId,
      model,
    );
    final loginRes = await _authRepository.loginWithEmail(
      model.email,
      model.password,
    );
    return loginRes;
  }
}
