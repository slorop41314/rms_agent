import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginWithEmailUseCase {
  final AuthRepository _authRepository;

  LoginWithEmailUseCase(
    this._authRepository,
  );

  Future<AuthResponse> execute(String email, String password) async {
    return _authRepository.loginWithEmail(email, password);
  }
}
