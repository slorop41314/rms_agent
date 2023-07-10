import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockResellerRepository extends Mock implements ResellerRepository {}

void main() {
  final mockAuthRepository = _MockAuthRepository();
  final mockResellerRepository = _MockResellerRepository();

  group(
    'GetCurrentResellerProfileUseCaseTest',
    () {
      final getCurrentResellerProfileUseCase = GetCurrentResellerProfileUseCase(
        mockAuthRepository,
        mockResellerRepository,
      );

      test('execute - no user found', () async {
        when(
          mockAuthRepository.getUserAuth,
        ).thenAnswer(
          (_) async => null,
        );

        final res = await getCurrentResellerProfileUseCase.execute();

        verify(
          mockAuthRepository.getUserAuth,
        ).called(1);

        verifyNever(
          () => mockResellerRepository.getProfile('userid'),
        );

        expect(res, null);
      });

      test('execute - find user', () async {
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

        const resellerModel = ResellerModel(
          id: 'id',
          name: 'name',
          email: 'email',
          userId: 'userId',
          defaultPassword: false,
          isApproved: false,
        );

        when(
          () => mockResellerRepository.getProfile(user.id),
        ).thenAnswer(
          (_) async => resellerModel,
        );

        final res = await getCurrentResellerProfileUseCase.execute();

        verify(
          mockAuthRepository.getUserAuth,
        ).called(1);

        verify(
          () => mockResellerRepository.getProfile(
            user.id,
          ),
        ).called(1);

        expect(res, resellerModel);
      });
    },
  );

  tearDown(resetMocktailState);
  tearDownAll(GetIt.I.reset);
}
