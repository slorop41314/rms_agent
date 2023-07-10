import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:utilities/utilities.dart';

@RoutePage()
class VerifyEmailScreen extends StatelessWidget {
  static const route = '/verify-email';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              // TODO(alb): check issue
              // AppAssets.fluttie.sendingMail.lottie(
              //   width: 300,
              //   height: 300,
              // ),
              const SizedBox(
                height: 48,
              ),
              Center(
                child: Text(
                  t.register.verifyEmailMessage,
                  style: CustomTextStyles.semibold16.primary,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
