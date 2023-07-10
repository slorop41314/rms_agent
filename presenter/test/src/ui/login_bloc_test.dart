import 'package:bloc_test/bloc_test.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:presenter/presenter.dart';
import 'package:utilities/utilities.dart';

class _MockLoginUseCase extends Mock implements LoginWithEmailUseCase {}

class _MockGetCurrentProfileUseCase extends Mock
    implements GetCurrentResellerProfileUseCase {}

void main() {
  final mockLoginUseCase = _MockLoginUseCase();
  final currentResellerProfileUseCase = _MockGetCurrentProfileUseCase();

  group(
    'LoginBloc',
    () {
      _loginInitial(
        mockLoginUseCase,
        currentResellerProfileUseCase,
      );
      _loginSuccess(
        mockLoginUseCase,
        currentResellerProfileUseCase,
      );
      _loginEmailNotYetCreateProfile(
        mockLoginUseCase,
        currentResellerProfileUseCase,
      );
      _loginValidationError(
        mockLoginUseCase,
        currentResellerProfileUseCase,
      );
      _loginAuthException(
        mockLoginUseCase,
        currentResellerProfileUseCase,
      );
      _loginOtherError(
        mockLoginUseCase,
        currentResellerProfileUseCase,
      );
      _loginNotYetVerifyEmail(
        mockLoginUseCase,
        currentResellerProfileUseCase,
      );
    },
  );
}

void _loginInitial(
  _MockLoginUseCase loginUseCase,
  _MockGetCurrentProfileUseCase getProfileUseCase,
) {
  blocTest<LoginBloc, LoginState>(
    'Login Initial',
    build: () => LoginBloc(
      loginUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(const LoginEvent.started()),
    expect: () => const <LoginState>[
      LoginState.loaded(
        formValidation: const <String, String>{},
      ),
    ],
    tearDown: resetMocktailState,
  );
}

void _loginSuccess(
  _MockLoginUseCase loginUseCase,
  _MockGetCurrentProfileUseCase getProfileUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';
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

  const resellerModel = ResellerModel(
    id: 'id',
    name: 'name',
    email: 'email',
    userId: 'userId',
    defaultPassword: false,
    isApproved: false,
  );
  blocTest<LoginBloc, LoginState>(
    'Login Success',
    setUp: () {
      when(
        () => loginUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenAnswer(
        (_) async => response,
      );
      when(
        () => getProfileUseCase.execute(),
      ).thenAnswer(
        (_) async => resellerModel,
      );
    },
    build: () => LoginBloc(
      loginUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const LoginEvent.loginButtonPressed(
        _mockEmail,
        _mockPassword,
      ),
    ),
    expect: () => const <LoginState>[
      LoginState.loading(),
      LoginState.success(),
    ],
    verify: (_) {
      verify(() => loginUseCase.execute(_mockEmail, _mockPassword)).called(1);

      verify(
        () => getProfileUseCase.execute(),
      ).called(1);
    },
    tearDown: resetMocktailState,
  );
}

void _loginEmailNotYetCreateProfile(
  _MockLoginUseCase loginUseCase,
  _MockGetCurrentProfileUseCase getProfileUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';
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

  blocTest<LoginBloc, LoginState>(
    'Login Email No Profile',
    setUp: () {
      when(
        () => loginUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenAnswer(
        (_) async => response,
      );
      when(
        () => getProfileUseCase.execute(),
      ).thenAnswer((_) async => null);
    },
    build: () => LoginBloc(
      loginUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const LoginEvent.loginButtonPressed(
        _mockEmail,
        _mockPassword,
      ),
    ),
    expect: () => const <LoginState>[
      LoginState.loading(),
      LoginState.setupProfile(),
    ],
    verify: (_) {
      verify(
        () => loginUseCase.execute(_mockEmail, _mockPassword),
      ).called(1);
      verify(
        () => getProfileUseCase.execute(),
      ).called(1);
    },
    tearDown: resetMocktailState,
  );
}

void _loginValidationError(
  _MockLoginUseCase loginUseCase,
  _MockGetCurrentProfileUseCase getProfileUseCase,
) {
  const _mockEmail = 'email';
  const _mockPassword = '';
  final emailValidation = FormValidationUtils.isEmail(_mockEmail);
  final passValidation = FormValidationUtils.isPassword(_mockPassword);
  blocTest<LoginBloc, LoginState>(
    'Login Form Validation',
    build: () => LoginBloc(
      loginUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const LoginEvent.loginButtonPressed(
        _mockEmail,
        _mockPassword,
      ),
    ),
    expect: () => <LoginState>[
      const LoginState.loading(),
      LoginState.loaded(
        formValidation: {
          'email': emailValidation!,
          'password': passValidation!,
        },
      ),
    ],
    verify: (_) {
      verifyNever(() => loginUseCase.execute(_mockEmail, _mockPassword));

      verifyNever(
        () => getProfileUseCase.execute(),
      );
    },
    tearDown: resetMocktailState,
  );
}

void _loginNotYetVerifyEmail(
  _MockLoginUseCase loginUseCase,
  _MockGetCurrentProfileUseCase getProfileUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';
  const errorMessage = 'email not confirmed';

  blocTest<LoginBloc, LoginState>(
    'Login Not Yet Verify Email',
    setUp: () {
      when(
        () => loginUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenThrow(
        const AuthException(
          errorMessage,
        ),
      );
    },
    build: () => LoginBloc(
      loginUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const LoginEvent.loginButtonPressed(
        _mockEmail,
        _mockPassword,
      ),
    ),
    expect: () => const <LoginState>[
      LoginState.loading(),
      LoginState.verifyEmail(),
    ],
    verify: (_) {
      verify(() => loginUseCase.execute(_mockEmail, _mockPassword)).called(1);
      verifyNever(
        () => getProfileUseCase.execute(),
      );
    },
    tearDown: resetMocktailState,
  );
}

void _loginAuthException(
  _MockLoginUseCase loginUseCase,
  _MockGetCurrentProfileUseCase getProfileUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';
  const errorMessage = 'errorMessage';

  blocTest<LoginBloc, LoginState>(
    'Login Auth Exception',
    setUp: () {
      when(
        () => loginUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenThrow(
        const AuthException(
          errorMessage,
        ),
      );
    },
    build: () => LoginBloc(
      loginUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const LoginEvent.loginButtonPressed(
        _mockEmail,
        _mockPassword,
      ),
    ),
    expect: () => const <LoginState>[
      LoginState.loading(),
      LoginState.error(errorMessage: errorMessage),
    ],
    verify: (_) {
      verify(() => loginUseCase.execute(_mockEmail, _mockPassword)).called(1);
      verifyNever(
        () => getProfileUseCase.execute(),
      );
    },
    tearDown: resetMocktailState,
  );
}

void _loginOtherError(
  _MockLoginUseCase loginUseCase,
  _MockGetCurrentProfileUseCase getProfileUseCase,
) {
  const _mockEmail = 'email@mail.com';
  const _mockPassword = 'password';

  blocTest<LoginBloc, LoginState>(
    'Login Other Error',
    setUp: () {
      when(
        () => loginUseCase.execute(
          _mockEmail,
          _mockPassword,
        ),
      ).thenThrow(Error());
    },
    build: () => LoginBloc(
      loginUseCase,
      getProfileUseCase,
    ),
    act: (bloc) => bloc.add(
      const LoginEvent.loginButtonPressed(
        _mockEmail,
        _mockPassword,
      ),
    ),
    expect: () => const <LoginState>[
      LoginState.loading(),
      LoginState.error(),
    ],
    verify: (_) {
      verify(() => loginUseCase.execute(_mockEmail, _mockPassword)).called(1);
      verifyNever(
        () => getProfileUseCase.execute(),
      );
    },
    tearDown: resetMocktailState,
  );
}
