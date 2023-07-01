import 'package:auto_route/auto_route.dart';
import 'package:rms_agent/i18n/strings.g.dart';
import 'package:rms_agent/src/components/extension/context_extension.dart';
import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/src/routes/app_router.dart';

@RoutePage()
class LoginScreen extends StatefulWidget implements AutoRouteWrapper {
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
      listener: _loginListener,
      builder: (_, state) {
        return Scaffold(
          appBar: CustomAppBar(
            t.login.message,
          ),
          body: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              CustomInput(
                label: t.email,
                controller: _emailController,
              ),
              CustomGap.vLarge(),
              CustomInput(
                label: t.password,
                controller: _passwordController,
              ),
              CustomGap.vLarge(),
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
            ],
          ),
        );
      },
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
          MainDashboardRoute(),
          predicate: (_) => false,
        );
      },
      error: (msg) {
        context.showErrorSnackbar(msg);
      },
      orElse: () {},
    );
    //
  }
}
