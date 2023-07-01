import 'package:flutter/material.dart';
import 'package:rms_agent/i18n/strings.g.dart';

extension BuildContextExtension on BuildContext {
  void showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void showErrorSnackbar(String? message) {
    final snackBar = SnackBar(
      content: Text(message ?? t.error.defaultMessage),
    );

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
