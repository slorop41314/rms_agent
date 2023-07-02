import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentAuthUserUseCase {
  final AuthRepository _authRepository;

  GetCurrentAuthUserUseCase(
    this._authRepository,
  );

  Future<User?> execute() {
    return _authRepository.getUserAuth();
  }
}
