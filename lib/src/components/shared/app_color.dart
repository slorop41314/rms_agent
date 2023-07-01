part of 'shared.dart';

class CustomColors {
  static const primary = Color(0xff2B56FB);
  static const secondary = Color(0xffFBA82B);
  static const primaryLight = Color(0xffFFEAF6);
  static const white = Colors.white;
  static const dark = Colors.black;
  static const green = Color(0xff00A651);
  static const red = Color(0xffE21313);
  static const orangeBg = Color(0xffFFE3CD);
  static const orangeText = Color(0xffFA7D1D);
  static const greyBgLight = Color(0xfffF7F7F7);
  static const backgroundPrimary = Color(0xffffffff);
  static const backgroundSecondary = Color(0xffF6F6F6);
  static const primaryText = Color(0xff2E2E2E);
  static const greyText = Color(0xff636876);
  static const border = Color(0xffDDDDE5);
  static const inputPlaceholder = Color(0xff8D9BA3);

  static const black60 = Color(0xff616161);

  /// Primary color with variant
  static MaterialColor primaryV = const MaterialColor(
    0xff4F73FE,
    {
      200: Color(0xff6C8BFF),
      400: Color(0xff8BA5FF),
      600: Color(0xffBACAFF),
      800: Color(0xffE0E7FF),
    },
  );

  /// Secondary with variant
  static MaterialColor secondaryV = const MaterialColor(
    0xffFFBA52,
    {
      200: Color(0xffFFF4E4),
      400: Color(0xffFFE5BF),
      600: Color(0xffFFD79B),
      800: Color(0xffFFC774),
    },
  );

  static MaterialColor grey = const MaterialColor(
    0xffBDBDBD,
    {
      200: Color(0xffFAFAFA),
      400: Color(0xffF5F5F5),
      600: Color(0xffEEEEEE),
      800: Color(0xffE0E0E0),
    },
  );

  static MaterialColor black = const MaterialColor(
    0xff212121,
    {
      200: Color(0xff9E9E9E),
      400: Color(0xff757575),
      600: Color(0xff616161),
      800: Color(0xff424242),
    },
  );

  // Alert and status
  static const error = const Color(0xffFF3333);
  static const success = const Color(0xff04D600);
  static const info = const Color(0xff0089D6);
  static const warning = const Color(0xffFFE16A);
  static const disabledButton = const Color(0xff879AC1);

  static MaterialColor yellow = const MaterialColor(
    0xffFFEB4F,
    {
      200: Color(0xffFFF4E4),
    },
  );

  static const bgBlue = const Color(0xffF6F8FF);
}
