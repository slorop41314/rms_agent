import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  final mockAuthRepository = _MockAuthRepository();

  group(
    'ListenAuthEventChangeUseCaseTest',
    () {
      final listenAuthEventChangeUseCase = ListenAuthEventChangeUseCase(
        mockAuthRepository,
      );

      test('execute', () async {
        final mockStream = const Stream<AuthState>.empty();
        when(
          mockAuthRepository.listenAuthEventChanges,
        ).thenAnswer(
          (_) => mockStream,
        );

        final res = await listenAuthEventChangeUseCase.execute();

        verify(
          mockAuthRepository.listenAuthEventChanges,
        ).called(1);
        expect(res, mockStream);
      });
    },
  );

  tearDown(resetMocktailState);
  tearDownAll(GetIt.I.reset);
}
