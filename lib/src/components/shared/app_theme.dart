import 'package:rms_agent/src/components/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    appBarTheme: const AppBarTheme(
      // color: Colors.black,
      elevation: 1,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    ),
    primaryColor: CustomColors.primary,
    hintColor: const Color(0xffcdd3e0),
    dividerColor: Colors.grey[100],
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      labelLarge: GoogleFonts.plusJakartaSans(
        textStyle: const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: CustomColors.grey.shade600,
      thickness: 1,
      space: 1,
    ),
  );
}
