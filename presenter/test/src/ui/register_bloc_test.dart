import 'package:bloc_test/bloc_test.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:presenter/presenter.dart';
import 'package:utilities/utilities.dart';

class _MockRegisterUseCase extends Mock implements RegisterWithEmailUseCase {}

void main() {
  final mockRegisterUseCase = _MockRegisterUseCase();
  group(
    'RegisterBloc',
    () {
      _registerInitial(
        mockRegisterUseCase,
      );
      _registerSuccess(
        mockRegisterUseCase,
      );
      _registerValidationError(
        mockRegisterUseCase,
      );
      _registerAuthException(
        mockRegisterUseCase,
      );
      _registerOtherError(
        mockRegisterUseCase,
      );
    },
  );
}

void _registerInitial(
  _MockRegisterUseCase registerUseCase,
) {
  blocTest<RegisterBloc, RegisterState>(
    'Register Initial',
    build: () => RegisterBloc(
      registerUseCase,
    ),
    act: (bloc) => bloc.add(const RegisterEvent.started()),
    expect: () => const <RegisterState>[
      RegisterState.loaded(
        formValidation: const <String, String>{},
      ),
    ],
    tearDown: resetMocktailState,
  );
}

void _registerSuccess(
  _MockRegisterUseCase registerUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';
  const _mockConfirmPassword = 'password';
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
  blocTest<RegisterBloc, RegisterState>(
    'Register Success',
    setUp: () {
      when(
        () => registerUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenAnswer(
        (_) async => response,
      );
    },
    build: () => RegisterBloc(
      registerUseCase,
    ),
    act: (bloc) => bloc.add(
      const RegisterEvent.registerButtonPressed(
        email: _mockEmail,
        password: _mockPassword,
        confirmPassword: _mockConfirmPassword,
      ),
    ),
    expect: () => const <RegisterState>[
      RegisterState.loading(),
      RegisterState.success(),
    ],
    verify: (_) {
      verify(() => registerUseCase.execute(_mockEmail, _mockPassword))
          .called(1);
    },
    tearDown: resetMocktailState,
  );
}

void _registerValidationError(
  _MockRegisterUseCase registerUseCase,
) {
  const _mockEmail = 'email';
  const _mockPassword = 'pass';
  const _mockConfirmPassword = 'password';
  final emailValidation = FormValidationUtils.isEmail(_mockEmail);
  final passValidation = FormValidationUtils.isPassword(_mockPassword);
  final confirmPassValidation = FormValidationUtils.isSamePassword(
    _mockPassword,
    _mockConfirmPassword,
  );
  blocTest<RegisterBloc, RegisterState>(
    'Register Form Validation',
    build: () => RegisterBloc(
      registerUseCase,
    ),
    act: (bloc) => bloc.add(
      const RegisterEvent.registerButtonPressed(
        email: _mockEmail,
        password: _mockPassword,
        confirmPassword: _mockConfirmPassword,
      ),
    ),
    expect: () => <RegisterState>[
      const RegisterState.loading(),
      RegisterState.loaded(
        formValidation: {
          'email': emailValidation!,
          'password': passValidation!,
          'confirmPassword': confirmPassValidation!,
        },
      ),
    ],
    verify: (_) {
      verifyNever(() => registerUseCase.execute(_mockEmail, _mockPassword));
    },
    tearDown: resetMocktailState,
  );
}

void _registerAuthException(
  _MockRegisterUseCase registerUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';
  const errorMessage = 'errorMessage';

  blocTest<RegisterBloc, RegisterState>(
    'Register Auth Exception',
    setUp: () {
      when(
        () => registerUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenThrow(
        const AuthException(
          errorMessage,
        ),
      );
    },
    build: () => RegisterBloc(
      registerUseCase,
    ),
    act: (bloc) => bloc.add(
      const RegisterEvent.registerButtonPressed(
        email: _mockEmail,
        password: _mockPassword,
        confirmPassword: _mockPassword,
      ),
    ),
    expect: () => const <RegisterState>[
      RegisterState.loading(),
      RegisterState.error(errorMessage: errorMessage),
    ],
    verify: (_) {
      verify(
        () => registerUseCase.execute(_mockEmail, _mockPassword),
      ).called(1);
    },
    tearDown: resetMocktailState,
  );
}

void _registerOtherError(
  _MockRegisterUseCase registerUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';

  blocTest<RegisterBloc, RegisterState>(
    'Register Other Error',
    setUp: () {
      when(
        () => registerUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenThrow(Error());
    },
    build: () => RegisterBloc(
      registerUseCase,
    ),
    act: (bloc) => bloc.add(
      const RegisterEvent.registerButtonPressed(
        email: _mockEmail,
        password: _mockPassword,
        confirmPassword: _mockPassword,
      ),
    ),
    expect: () => const <RegisterState>[
      RegisterState.loading(),
      RegisterState.error(),
    ],
    verify: (_) {
      verify(() => registerUseCase.execute(_mockEmail, _mockPassword))
          .called(1);
    },
    tearDown: resetMocktailState,
  );
}
