import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class AuthRemote {
  final SupabaseClient _sb;

  AuthRemote(
    this._sb,
  );

  Future<AuthResponse> loginWithEmail(String email, String password) async {
    return _sb.auth.signInWithPassword(password: password, email: email);
  }
}
