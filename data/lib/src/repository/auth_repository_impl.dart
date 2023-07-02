import 'package:data/src/remote/auth_remote.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemote _authRemote;

  AuthRepositoryImpl(
    this._authRemote,
  );

  @override
  Future<AuthResponse> loginWithEmail(String email, String password) {
    return _authRemote.loginWithEmail(email, password);
  }
  
  @override
  Stream<AuthState> listenAuthEventChanges() {
    return _authRemote.listenAuthEventChanges();
  }
  
  @override
  Future<User?> getUserAuth() {
    return _authRemote.getUserAuth();
  }
  
  @override
  Future<void> logout() {
    return _authRemote.logout();
  }
}
