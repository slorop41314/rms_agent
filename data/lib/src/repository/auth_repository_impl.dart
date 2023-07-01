import 'package:data/src/cache/auth_cache.dart';
import 'package:data/src/remote/auth_remote.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemote _authRemote;
  final AuthCache _authCache;

  AuthRepositoryImpl(
    this._authRemote,
    this._authCache,
  );

  @override
  Future<AuthResponse> loginWithEmail(String email, String password) {
    return _authRemote.loginWithEmail(email, password);
  }
}
