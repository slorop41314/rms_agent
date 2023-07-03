import 'package:utilities/utilities.dart';

class FormValidationUtils {
  static final emailRegex =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$');

  static String? isEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return t.formValidations.fieldParamCannotBeEmpty(label: t.email);
    }
    if (!emailRegex.hasMatch(email)) {
      return t.formValidations.fieldParamNotValid(label: t.email);
    }
    return null;
  }

  static String? isNotEmpty(String? value) {
    if (value == null || value.trim().isEmpty) {
      return t.formValidations.fieldCannotBeEmpty;
    }
    return null;
  }

  static String? isPassword(String? value) {
    final password = value?.trim();
    if (password == null || password.isEmpty || password.length < 8) {
      return t.formValidations.passwordMinLength;
    }
    if (password.contains(' ')) {
      return t.formValidations.passwordContainSpaces;
    }
    return null;
  }

  static String? isSamePassword(String? password, String? confirmPassword) {
    if (password == null ||
        confirmPassword == null ||
        password.trim().isEmpty ||
        confirmPassword.trim().isEmpty) {
      return t.formValidations.fieldParamCannotBeEmpty(label: t.password);
    }
    if (password.length != confirmPassword.length ||
        password != confirmPassword) {
      return t.formValidations.confirmPasswordNotEqual;
    }
    return null;
  }

  static String? isPhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.trim().isEmpty) {
      return t.formValidations.fieldParamCannotBeEmpty(label: t.phoneNumber);
    }
    String pattern = r'(^(601)[02-46-9]-*[0-9]{7}$|^(601)[1]-*[0-9]{8}$)';
    RegExp regExp = RegExp(
      pattern,
    );
    if (!regExp.hasMatch(phoneNumber)) {
      return t.formValidations.fieldParamNotValid(label: t.phoneNumber);
    }
    return null;
  }
}
