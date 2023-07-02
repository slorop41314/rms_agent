import 'package:domain/domain.dart';

abstract class AuthRepository {
  Future<AuthResponse> loginWithEmail(
    String email,
    String password,
  );

  Stream<AuthState> listenAuthEventChanges();
  
  Future<User?> getUserAuth();

  Future<void> logout();
}
