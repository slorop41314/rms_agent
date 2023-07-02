import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class ListenAuthEventChangeUseCase {
  final AuthRepository _authRepository;

  ListenAuthEventChangeUseCase(
    this._authRepository,
  );

  Stream<AuthState> execute() {
    return _authRepository.listenAuthEventChanges();
  }
}
