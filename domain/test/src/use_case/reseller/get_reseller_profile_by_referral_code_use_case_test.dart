import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class _MockResellerRepository extends Mock implements ResellerRepository {}

void main() {
  final mockResellerRepository = _MockResellerRepository();

  group(
    'GetResellerProfileByReferralCodeUseCaseTest',
    () {
      final getResellerProfileByReferralCodeUseCase =
          GetResellerProfileByReferralCodeUseCase(
        mockResellerRepository,
      );

      test('execute', () async {
        const referralCode = 'referralCode';

        const resellerModel = ResellerModel(
          id: 'id',
          name: 'name',
          email: 'email',
          userId: 'userId',
          defaultPassword: false,
          isApproved: false,
          referralCode: referralCode,
        );

        when(
          () => mockResellerRepository.getProfileByReferralCode(referralCode),
        ).thenAnswer(
          (_) async => resellerModel,
        );

        final res =
            await getResellerProfileByReferralCodeUseCase.execute(referralCode);

        verify(
          () => mockResellerRepository.getProfileByReferralCode(
            referralCode,
          ),
        ).called(1);

        expect(res, resellerModel);
      });
    },
  );

  tearDown(resetMocktailState);
  tearDownAll(GetIt.I.reset);
}
