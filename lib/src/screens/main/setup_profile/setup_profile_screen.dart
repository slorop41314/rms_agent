import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/src/components/extension/context_extension.dart';
import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:rms_agent/src/routes/app_router.dart';
import 'package:utilities/utilities.dart';

@RoutePage()
class SetupProfileScreen extends StatefulWidget implements AutoRouteWrapper {
  static const route = '/profile/setup';
  const SetupProfileScreen({super.key});

  @override
  State<SetupProfileScreen> createState() => _SetupProfileScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SetupProfileBloc>(
      create: (_) => GetIt.I.get(),
      child: this,
    );
  }
}

class _SetupProfileScreenState extends State<SetupProfileScreen> {
  bool _isLoading = false;

  late final SetupProfileBloc _bloc;
  final TextEditingController _referralController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    _bloc = BlocProvider.of<SetupProfileBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(''),
      body: BlocConsumer<SetupProfileBloc, SetupProfileState>(
        buildWhen: (_, current) => current.rebuild,
        listener: _setupProfileListener,
        builder: (_, state) {
          final formValidation = state is LoadedSetupProfileState
              ? state.formValidation
              : <String, String>{};
          return ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const SizedBox(
                height: 16,
              ),
              CustomInput(
                label: t.fullName,
                controller: _nameController,
                errorMessage: formValidation['fullName'],
              ),
              const SizedBox(
                height: 16,
              ),
              CustomInput(
                label: t.referralCode,
                controller: _referralController,
                errorMessage: formValidation['referral'],
              ),
              CustomGap.vLarge(),
              CustomButton(
                isLoading: _isLoading,
                label: t.submit,
                onPressed: () {
                  _bloc.add(
                    SetupProfileEvent.submitPressed(
                      fullName: _nameController.text,
                      referralCode: _referralController.text,
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void _setupProfileListener(BuildContext context, SetupProfileState state) {
    if (state is LoadingSetupProfileState) {
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
      confirmReferral: (model) {
        _showReferralBottomSheet(model);
      },
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

  void _showReferralBottomSheet(ResellerModel? refferal) async {
    CustomBottomSheet.show(
      context,
      title: t.setupProfile.referralInformation,
      content: _ReferralInformationWidget(
        referral: refferal,
      ),
      bottomAction: Row(
        children: [
          Expanded(
            child: CustomButton(
              label: t.cancel,
              onPressed: context.router.pop,
              buttonType: CustomButtonType.secondary,
            ),
          ),
          if (refferal != null) ...[
            CustomGap.hSmall(),
            Expanded(
              child: CustomButton(
                label: t.confirm,
                onPressed: () {
                  context.router.pop();
                  _bloc.add(
                    SetupProfileEvent.submitPressed(
                      fullName: _nameController.text,
                      referralCode: _referralController.text,
                    ),
                  );
                },
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ReferralInformationWidget extends StatelessWidget {
  final ResellerModel? referral;
  const _ReferralInformationWidget({
    required this.referral,
  });

  @override
  Widget build(BuildContext context) {
    final _referral = referral;
    if (_referral == null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            t.setupProfile.referralNotFound,
            style: CustomTextStyles.semibold16,
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "${t.fullName}: ${_referral.name}",
          style: CustomTextStyles.semibold16,
        ),
      ],
    );
  }
}
