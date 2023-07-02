import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:presenter/presenter.dart';
import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:utilities/utilities.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget implements AutoRouteWrapper {
  static const route = 'settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (_) => GetIt.I.get()
        ..add(
          const SettingsEvent.started(),
        ),
      child: this,
    );
  }
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final SettingsBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<SettingsBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Settings',
      ),
      body: BlocConsumer<SettingsBloc, SettingsState>(
        buildWhen: (_, currentState) => currentState.rebuild,
        builder: (context, state) => ListView(
          padding: const EdgeInsets.all(24),
          children: [
            // Profile sections
            state.maybeMap(
              loaded: (loadedModel) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 36,
                      ),
                    ),
                    CustomGap.vLarge(),
                    Text(
                      loadedModel.profile.name,
                      style: CustomTextStyles.semibold16,
                    ),
                    CustomGap.vMedium(),
                    Text(
                      loadedModel.profile.email,
                      style: CustomTextStyles.regular12,
                    ),
                  ],
                );
              },
              orElse: () => const _LoadingProfileWidget(),
            ),
            CustomGap.vLarge(),
            ListTile(
              title: Text(
                t.settings.editProfile,
                style: CustomTextStyles.regular16,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                //
              },
            ),
            ListTile(
              title: Text(
                t.settings.support,
                style: CustomTextStyles.regular16,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                //
              },
            ),
            CustomGap.vLarge(),
            Center(
              child: InkWell(
                onTap: () {
                  _bloc.add(
                    const SettingsEvent.logout(),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    t.settings.logout,
                    style: CustomTextStyles.regular14,
                  ),
                ),
              ),
            )
          ],
        ),
        listener: _blocListener,
      ),
    );
  }

  void _blocListener(BuildContext context, SettingsState state) {
    //
  }
}

class _LoadingProfileWidget extends StatelessWidget {
  const _LoadingProfileWidget();

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 36,
            ),
          ),
          CustomGap.vMedium(),
          Container(
            color: Colors.white,
            width: 250,
            height: 16,
          ),
          CustomGap.vMedium(),
          Container(
            color: Colors.white,
            width: 150,
            height: 16,
          ),
        ],
      ),
    );
  }
}
