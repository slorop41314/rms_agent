import 'package:bloc_test/bloc_test.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:presenter/presenter.dart';
import 'package:utilities/utilities.dart';

class _MockCreateProfileUseCase extends Mock
    implements CreateUserProfileUseCase {}

class _MockGetProfileByReferralCodeUseCase extends Mock
    implements GetResellerProfileByReferralCodeUseCase {}

void main() {
  final mockCreateProfileUseCase = _MockCreateProfileUseCase();
  final mockGetProfileByReferralCodeUseCase =
      _MockGetProfileByReferralCodeUseCase();

  setUpAll(() {
    registerFallbackValue(
      const CreateProfileRequestModel(
        fullName: '',
      ),
    );
    registerFallbackValue(
      'fallbackString',
    );
  });

  group(
    'SetupProfileBloc',
    () {
      _setupProfileInitial(
        mockCreateProfileUseCase,
        mockGetProfileByReferralCodeUseCase,
      );
      _setupProfileSuccess(
        mockCreateProfileUseCase,
        mockGetProfileByReferralCodeUseCase,
      );
      _setupProfileWithReferralSuccess(
        mockCreateProfileUseCase,
        mockGetProfileByReferralCodeUseCase,
      );
      _setupProfileWithReferralConfirmation(
        mockCreateProfileUseCase,
        mockGetProfileByReferralCodeUseCase,
      );
      _setupProfileValidationError(
        mockCreateProfileUseCase,
        mockGetProfileByReferralCodeUseCase,
      );
      _setupProfileOtherError(
        mockCreateProfileUseCase,
        mockGetProfileByReferralCodeUseCase,
      );
    },
  );
}

void _setupProfileInitial(
  _MockCreateProfileUseCase createProfileUseCase,
  _MockGetProfileByReferralCodeUseCase getProfileUseCase,
) {
  blocTest<SetupProfileBloc, SetupProfileState>(
    'Setup Profile Initial',
    build: () => SetupProfileBloc(
      createProfileUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(const SetupProfileEvent.started()),
    expect: () => const <SetupProfileState>[
      SetupProfileState.loaded(
        formValidation: const <String, String>{},
      ),
    ],
    tearDown: resetMocktailState,
  );
}

void _setupProfileSuccess(
  _MockCreateProfileUseCase createProfileUseCase,
  _MockGetProfileByReferralCodeUseCase getProfileUseCase,
) {
  const _mockName = 'fullName';

  final req = const CreateProfileRequestModel(
    fullName: _mockName,
    referralCode: null,
  );
  blocTest<SetupProfileBloc, SetupProfileState>(
    'Setup Profile Success',
    setUp: () {
      when(
        () => createProfileUseCase.execute(req),
      ).thenAnswer(
        (_) async => null,
      );
    },
    build: () => SetupProfileBloc(
      createProfileUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const SetupProfileEvent.submitPressed(
        fullName: _mockName,
        referralCode: '',
      ),
    ),
    expect: () => const <SetupProfileState>[
      SetupProfileState.loading(),
      SetupProfileState.success(),
    ],
    verify: (_) {
      verify(() => createProfileUseCase.execute(req)).called(1);

      verifyNever(
        () => getProfileUseCase.execute(any<String>()),
      );
    },
    tearDown: resetMocktailState,
  );
}

void _setupProfileWithReferralConfirmation(
  _MockCreateProfileUseCase createProfileUseCase,
  _MockGetProfileByReferralCodeUseCase getProfileUseCase,
) {
  const _mockName = 'fullName';
  const _referral = 'referral';
  const resellerModel = ResellerModel(
    id: 'id',
    name: 'name',
    email: 'email',
    userId: 'userId',
    defaultPassword: false,
    isApproved: false,
  );
  final req = const CreateProfileRequestModel(
    fullName: _mockName,
    referralCode: _referral,
    referredByUser: resellerModel,
  );
  blocTest<SetupProfileBloc, SetupProfileState>(
    'Setup Profile Success - Referral',
    setUp: () {
      when(
        () => createProfileUseCase.execute(req),
      ).thenAnswer(
        (_) async => null,
      );
      when(
        () => getProfileUseCase.execute(_referral),
      ).thenAnswer(
        (_) async => resellerModel,
      );
    },
    build: () => SetupProfileBloc(
      createProfileUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const SetupProfileEvent.submitPressed(
        fullName: _mockName,
        referralCode: _referral,
        confirmedReferral: true,
      ),
    ),
    expect: () => const <SetupProfileState>[
      SetupProfileState.loading(),
      SetupProfileState.success(),
    ],
    verify: (_) {
      final finalReq = req.copyWith(
        referredByUser: resellerModel,
      );
      verify(() => createProfileUseCase.execute(finalReq)).called(1);

      verify(() => getProfileUseCase.execute(_referral)).called(1);
    },
    tearDown: resetMocktailState,
  );
}

void _setupProfileWithReferralSuccess(
  _MockCreateProfileUseCase createProfileUseCase,
  _MockGetProfileByReferralCodeUseCase getProfileUseCase,
) {
  const _mockName = 'fullName';
  const _referral = 'referral';
  const resellerModel = ResellerModel(
    id: 'id',
    name: 'name',
    email: 'email',
    userId: 'userId',
    defaultPassword: false,
    isApproved: false,
  );
  final req = const CreateProfileRequestModel(
    fullName: _mockName,
    referralCode: _referral,
    referredByUser: resellerModel,
  );
  blocTest<SetupProfileBloc, SetupProfileState>(
    'Setup Profile Success - Referral Confirmation',
    setUp: () {
      when(
        () => createProfileUseCase.execute(req),
      ).thenAnswer(
        (_) async => null,
      );
      when(
        () => getProfileUseCase.execute(_referral),
      ).thenAnswer(
        (_) async => resellerModel,
      );
    },
    build: () => SetupProfileBloc(
      createProfileUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const SetupProfileEvent.submitPressed(
        fullName: _mockName,
        referralCode: _referral,
      ),
    ),
    expect: () => const <SetupProfileState>[
      SetupProfileState.loading(),
      SetupProfileState.confirmReferral(
        referral: resellerModel,
      ),
    ],
    verify: (_) {
      verify(() => getProfileUseCase.execute(_referral)).called(1);
    },
    tearDown: resetMocktailState,
  );
}

void _setupProfileValidationError(
  _MockCreateProfileUseCase createProfileUseCase,
  _MockGetProfileByReferralCodeUseCase getProfileUseCase,
) {
  const _mockName = '';
  final nameValidation = FormValidationUtils.isNotEmpty(_mockName);
  blocTest<SetupProfileBloc, SetupProfileState>(
    'Setup Profile Form Validation',
    build: () => SetupProfileBloc(
      createProfileUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const SetupProfileEvent.submitPressed(
        referralCode: '',
        fullName: _mockName,
      ),
    ),
    expect: () => <SetupProfileState>[
      const SetupProfileState.loading(),
      SetupProfileState.loaded(
        formValidation: {
          'fullName': nameValidation!,
        },
      ),
    ],
    verify: (_) {
      verifyNever(() => createProfileUseCase.execute(
            any<CreateProfileRequestModel>(),
          ));

      verifyNever(
        () => getProfileUseCase.execute(
          any<String>(),
        ),
      );
    },
    tearDown: resetMocktailState,
  );
}

void _setupProfileOtherError(
  _MockCreateProfileUseCase createProfileUseCase,
  _MockGetProfileByReferralCodeUseCase getProfileUseCase,
) {
  const _mockName = 'Full name';

  final req = const CreateProfileRequestModel(
    fullName: _mockName,
  );
  blocTest<SetupProfileBloc, SetupProfileState>(
    'Setup Profile Other Error',
    setUp: () {
      when(
        () => createProfileUseCase.execute(req),
      ).thenThrow(Error());
    },
    build: () => SetupProfileBloc(
      createProfileUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const SetupProfileEvent.submitPressed(
        referralCode: '',
        fullName: _mockName,
      ),
    ),
    expect: () => const <SetupProfileState>[
      SetupProfileState.loading(),
      SetupProfileState.error(),
    ],
    verify: (_) {
      verify(() => createProfileUseCase.execute(
            req,
          )).called(1);
      verifyNever(
        () => getProfileUseCase.execute(
          any<String>(),
        ),
      );
    },
    tearDown: resetMocktailState,
  );
}
