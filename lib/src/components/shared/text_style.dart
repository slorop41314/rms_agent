part of 'shared.dart';


class CustomTextStyles {
  static final Color textColor = CustomColors.black;

// TEXT STYLE
  static final bodyText1TextStyle = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: textColor,
    ),
  );
  static final bodyText2TextStyle = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textColor,
    ),
  );
  static final subtitle2TextStyle = GoogleFonts.plusJakartaSans(
    textStyle: const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );
  static final captionTextStyle = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: textColor,
    ),
  );
  static final headline1TextStyle = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: textColor,
    ),
  );
  static final headline2TextStyle = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: textColor,
    ),
  );
  static final haederTextStyle = GoogleFonts.plusJakartaSans(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
  static final extraBold18 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: textColor,
    ),
  );
  static final extraBold16 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: textColor,
    ),
  );
  static final extraBold14 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w800,
      color: textColor,
    ),
  );
  static final extraBold10 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w800,
      color: textColor,
    ),
  );
  static final bold32 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
  static final bold24 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
  static final bold20 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
  static final bold18 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
  static final bold16 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
  static final bold14 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
  static final bold12 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: textColor,
    ),
  );
  static final semiBold24 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );
  static final semiBold18 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );
  static final semibold16 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );
  static final semibold14 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );
  static final semibold12 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );
  static final semibold10 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: textColor,
    ),
  );

  static final medium16 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: textColor,
    ),
  );

  static final medium14 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: textColor,
    ),
  );
  static final medium12 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: textColor,
    ),
  );
  static final medium10 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: textColor,
    ),
  );
  static final regular16 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: textColor,
    ),
  );
  static final regular14 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: textColor,
    ),
  );
  static final regular12 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: textColor,
    ),
  );
  static final regular10 = GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: textColor,
    ),
  );
}

extension TextStyling on TextStyle {
  TextStyle get grey => this.copyWith(
    color: CustomColors.grey,
  );

  TextStyle get black => this.copyWith(
    color: CustomColors.black,
  );

  TextStyle get black80 => this.copyWith(
    color: CustomColors.black.shade800,
  );

  TextStyle get black60 => this.copyWith(
    color: CustomColors.black.shade600,
  );

  TextStyle get black40 => this.copyWith(
    color: CustomColors.black.shade400,
  );

  TextStyle get black20 => this.copyWith(
    color: CustomColors.black.shade200,
  );

  TextStyle get red => this.copyWith(
    color: CustomColors.red,
  );

  TextStyle get error => this.copyWith(
    color: CustomColors.error,
  );

  TextStyle get success => this.copyWith(
    color: CustomColors.success,
  );

  TextStyle get primary => this.copyWith(
    color: CustomColors.primary,
  );

  TextStyle get secondary => this.copyWith(
    color: CustomColors.secondary,
  );

  TextStyle get green => this.copyWith(
    color: CustomColors.green,
  );

  TextStyle get orange => this.copyWith(
    color: CustomColors.orangeText,
  );

  TextStyle get yellow => this.copyWith(
    color: CustomColors.yellow,
  );

  TextStyle get light => this.copyWith(
    color: Colors.white,
  );
}
