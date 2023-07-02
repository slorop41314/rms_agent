import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/i18n/strings.g.dart';
import 'package:rms_agent/src/components/extension/context_extension.dart';
import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:rms_agent/src/routes/app_router.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget implements AutoRouteWrapper {
  static const route = '/auth/register';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (_) => GetIt.I.get(),
      child: this,
    );
  }
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isLoading = false;

  late final RegisterBloc _bloc;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _referralController = TextEditingController();

  @override
  void initState() {
    _bloc = BlocProvider.of<RegisterBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      buildWhen: (_, current) => current.rebuild,
      listener: _registerListener,
      builder: (_, state) {
        final formValidation = state is LoadedRegisterState
            ? state.formValidation
            : <String, String>{};
        return Scaffold(
          appBar: CustomAppBar(''),
          body: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                t.register.messageTitle,
                style: CustomTextStyles.semiBold24,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                t.register.messageDescription,
                style: CustomTextStyles.regular14,
              ),
              const SizedBox(
                height: 16,
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
                secureText: true,
                errorMessage: formValidation['password'],
              ),
              CustomGap.vLarge(),
              CustomInput(
                label: t.confirmPassword,
                controller: _confirmPasswordController,
                secureText: true,
                errorMessage: formValidation['confirmPassword'],
              ),
              CustomGap.vLarge(),
              CustomInput(
                label: t.referralCode,
                controller: _referralController,
                errorMessage: formValidation['referral'],
              ),
              CustomGap.vLarge(),
              CustomButton(
                isLoading: _isLoading,
                label: t.register.button,
                isDisabled: true,
                onPressed: () {
                  _bloc.add(
                    RegisterEvent.registerButtonPressed(
                      email: _emailController.text,
                      password: _passwordController.text,
                      confirmPassword: _confirmPasswordController.text,
                      referral: _referralController.text,
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

  void _registerListener(BuildContext context, RegisterState state) {
    if (state is LoadingRegisterState) {
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
      orElse: () {},
    );
    //
  }
}
