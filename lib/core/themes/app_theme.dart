import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xff0F1117),
    textTheme: GoogleFonts.interTextTheme(),
    colorScheme: ColorScheme.dark(
      primary: const Color(0xff7C5CFF),
      secondary: const Color(0xff5B8CFF),
      surface: const Color(0xff1A1D26),
    ),
  );
}
