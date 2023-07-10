import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  final mockAuthRepository = _MockAuthRepository();

  group(
    'LogoutUseCaseTest',
    () {
      final logoutUseCase = LogoutUseCase(
        mockAuthRepository,
      );

      test('execute', () async {
        when(
          () => mockAuthRepository.logout(),
        ).thenAnswer(
          (_) async => null,
        );

        await logoutUseCase.execute();

        verify(
          mockAuthRepository.logout,
        ).called(1);
      });
    },
  );

  tearDown(resetMocktailState);
  tearDownAll(GetIt.I.reset);
}
