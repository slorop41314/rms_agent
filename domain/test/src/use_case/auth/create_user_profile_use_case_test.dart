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
    'CreateUserProfileUseCaseTest',
    () {
      final createProfileUseCase = CreateUserProfileUseCase(
        mockAuthRepository,
        mockResellerRepository,
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

        const request = CreateProfileRequestModel(
          fullName: 'fullName',
        );

        when(
          () => mockResellerRepository.addProfile(user, request),
        ).thenAnswer(
          (_) async => null,
        );

        await createProfileUseCase.execute(request);

        verify(
          mockAuthRepository.getUserAuth,
        ).called(1);

        verify(
          () => mockResellerRepository.addProfile(
            user,
            request,
          ),
        ).called(1);
      });
    },
  );

  tearDown(resetMocktailState);
  tearDownAll(GetIt.I.reset);
}
