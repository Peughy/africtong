import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  static const _mainColor = 0xFF2BA6DD;
  // static const _radius = 20;

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(_mainColor, <int, Color>{
      50: Color(0x1A2BA6DD),
      100: Color(0x332BA6DD),
      200: Color(0x4D2BA6DD),
      300: Color(0x662BA6DD),
      400: Color(0x802BA6DD),
      500: Color(0xFF2BA6DD),
      600: Color(0x992BA6DD),
      700: Color(0xB32BA6DD),
      800: Color(0xCC2BA6DD),
      900: Color(0x962BA6DD),
    }),
    textTheme: TextTheme(
      displayLarge:
          GoogleFonts.dmSerifDisplay(fontSize: 48, fontWeight: FontWeight.bold),
      displayMedium:
          GoogleFonts.dmSerifDisplay(fontSize: 46, fontWeight: FontWeight.bold),
      displaySmall:
          GoogleFonts.dmSerifDisplay(fontSize: 42, fontWeight: FontWeight.bold),
      titleLarge:
          GoogleFonts.montserrat(fontSize: 38, fontWeight: FontWeight.w600),
      titleMedium:
          GoogleFonts.montserrat(fontSize: 36, fontWeight: FontWeight.w600),
      titleSmall:
          GoogleFonts.montserrat(fontSize: 32, fontWeight: FontWeight.w600),
      bodyLarge: GoogleFonts.openSans(fontSize: 28),
      bodyMedium: GoogleFonts.openSans(fontSize: 26),
      bodySmall: GoogleFonts.openSans(fontSize: 22),
    ),
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: const MaterialColor(_mainColor, <int, Color>{
        50: Color(0x1A2BA6DD),
        100: Color(0x332BA6DD),
        200: Color(0x4D2BA6DD),
        300: Color(0x662BA6DD),
        400: Color(0x802BA6DD),
        500: Color(0xFF2BA6DD),
        600: Color(0x992BA6DD),
        700: Color(0xB32BA6DD),
      }),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.dmSerifDisplay(
            fontSize: 48, fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.dmSerifDisplay(
            fontSize: 46, fontWeight: FontWeight.bold),
        displaySmall: GoogleFonts.dmSerifDisplay(
            fontSize: 42, fontWeight: FontWeight.bold),
        titleLarge:
            GoogleFonts.montserrat(fontSize: 38, fontWeight: FontWeight.w600),
        titleMedium:
            GoogleFonts.montserrat(fontSize: 36, fontWeight: FontWeight.w600),
        titleSmall:
            GoogleFonts.montserrat(fontSize: 32, fontWeight: FontWeight.w600),
        bodyLarge: GoogleFonts.openSans(fontSize: 28),
        bodyMedium: GoogleFonts.openSans(fontSize: 26),
        bodySmall: GoogleFonts.openSans(fontSize: 22),
      ));
}
