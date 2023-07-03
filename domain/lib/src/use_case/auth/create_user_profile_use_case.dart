import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateUserProfileUseCase {
  final AuthRepository _authRepository;

  CreateUserProfileUseCase(
    this._authRepository,
  );

  Future<AuthResponse> execute(RegisterRequestModel model) async {
    final res = await _authRepository.loginWithEmail(
      model.email,
      model.password,
    );

    return res;
  }
}
