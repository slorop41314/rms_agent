import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  final mockAuthRepository = _MockAuthRepository();

  group(
    'LoginWithEmailUseCaseTest',
    () {
      final loginUseCase = LoginWithEmailUseCase(
        mockAuthRepository,
      );

      test('execute', () async {
        const email = 'email';
        const password = 'password';

        const user = User(
          id: 'id',
          appMetadata: <String, dynamic>{},
          userMetadata: null,
          aud: 'aud',
          createdAt: 'createdAt',
        );

        final response = AuthResponse(
          session: null,
          user: user,
        );

        when(
          () => mockAuthRepository.loginWithEmail(email, password),
        ).thenAnswer(
          (_) async => response,
        );

        final result = await loginUseCase.execute(
          email,
          password,
        );

        verify(
          () => mockAuthRepository.loginWithEmail(email, password),
        ).called(1);

        expect(result.user, user);
      });
    },
  );

  tearDown(resetMocktailState);
  tearDownAll(GetIt.I.reset);
}
