import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xFFE2BE7F);
Color backgroundColor = Color(0xFF202020);

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.alata(color: primaryColor, fontSize: 30),
        titleMedium: GoogleFonts.alata(color: primaryColor, fontSize: 25),
        titleSmall: GoogleFonts.alata(color: primaryColor, fontSize: 20),
        headlineLarge:
            GoogleFonts.alexandria(color: primaryColor, fontSize: 30),
        headlineMedium:
            GoogleFonts.alexandria(color: primaryColor, fontSize: 25),
        headlineSmall:
            GoogleFonts.alexandria(color: primaryColor, fontSize: 20),
        labelLarge: GoogleFonts.elMessiri(color: primaryColor , fontSize: 20),
        labelMedium: GoogleFonts.elMessiri(color: primaryColor , fontSize: 15),
        labelSmall: GoogleFonts.elMessiri(color: primaryColor , fontSize: 10),
        bodyLarge: GoogleFonts.alexandria(color: primaryColor, fontSize: 25),
        bodyMedium: GoogleFonts.alexandria(color: primaryColor, fontSize: 20),
        bodySmall: GoogleFonts.alexandria(color: primaryColor, fontSize: 15),
      ));
}
