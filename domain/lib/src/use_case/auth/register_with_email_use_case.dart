import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterWithEmailUseCase {
  final AuthRepository _authRepository;

  RegisterWithEmailUseCase(
    this._authRepository,
  );

  Future<AuthResponse> execute(String email, String password) async {
    final res = await _authRepository.registerWithEmail(
      email,
      password,
    );
    return res;
  }
}
