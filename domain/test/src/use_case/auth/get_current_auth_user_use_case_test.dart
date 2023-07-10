import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  final mockAuthRepository = _MockAuthRepository();
  
  group(
    'GetCurrentAuthUserUseCaseTest',
    () {
      final getCurrentUserUseCase = GetCurrentAuthUserUseCase(
        mockAuthRepository,
      );

      test('execute', () async {
        const user = User(
          id: 'id',
          appMetadata: <String, dynamic>{},
          userMetadata: null,
          aud: 'aud',
          createdAt: 'createdAt',
        );

        when(
          mockAuthRepository.getUserAuth,
        ).thenAnswer(
          (_) async => user,
        );

        final result = await getCurrentUserUseCase.execute();

        verify(
          mockAuthRepository.getUserAuth,
        ).called(1);

        expect(result, user);
      });
    },
  );

  tearDown(resetMocktailState);
  tearDownAll(GetIt.I.reset);
}
