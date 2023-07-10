import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/src/components/extension/context_extension.dart';
import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:rms_agent/src/routes/app_router.dart';
import 'package:utilities/utilities.dart';

@RoutePage()
class LoginScreen extends StatefulWidget implements AutoRouteWrapper {
  static const route = '/auth/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => GetIt.I.get(),
      child: this,
    );
  }
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  late final LoginBloc _bloc;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _bloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      buildWhen: (_, current) => current.rebuild,
      listener: _loginListener,
      builder: (_, state) {
        final formValidation = state is LoadedLoginState
            ? state.formValidation
            : <String, String>{};
        return Scaffold(
          body: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                t.login.messageTitle,
                style: CustomTextStyles.semiBold24,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                t.login.messageDescription,
                style: CustomTextStyles.regular14,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomInput(
                label: t.email,
                controller: _emailController,
                errorMessage: formValidation['email'],
              ),
              CustomGap.vLarge(),
              CustomInput(
                label: t.password,
                controller: _passwordController,
                errorMessage: formValidation['password'],
              ),
              CustomGap.vXxl(),
              CustomButton(
                isLoading: _isLoading,
                label: t.login.button,
                onPressed: () {
                  _bloc.add(
                    LoginEvent.loginButtonPressed(
                      _emailController.text,
                      _passwordController.text,
                    ),
                  );
                },
              ),
              CustomGap.vXl(),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: t.login.dontHaveAccount,
                        style: CustomTextStyles.regular14,
                      ),
                      TextSpan(
                        text: ' ${t.login.createAccount}',
                        style: CustomTextStyles.semibold16.primary,
                        recognizer: TapGestureRecognizer()
                          ..onTap = _goToRegister,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _goToRegister() {
    context.router.push(
      const RegisterRoute(),
    );
  }

  void _loginListener(BuildContext context, LoginState state) {
    if (state is LoadingLoginState) {
      setState(() {
        _isLoading = true;
      });
      return;
    }
    if (_isLoading) {
      setState(() {
        _isLoading = false;
      });
    }
    state.maybeWhen(
      success: () {
        context.router.pushAndPopUntil(
          const MainDashboardRoute(),
          predicate: (_) => false,
        );
      },
      error: (msg) {
        context.showErrorSnackbar(msg);
      },
      verifyEmail: () {
        context.router.push(
          const VerifyEmailRoute(),
        );
      },
      orElse: () {},
    );
    //
  }
}
