import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  final AuthRepository _authRepository;

  LogoutUseCase(
    this._authRepository,
  );

  Future<void> execute() {
    return _authRepository.logout();
  }
}
