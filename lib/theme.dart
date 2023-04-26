import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrasileiraoTheme {
  static const MaterialColor color = MaterialColor(
    _BrasileiraoPrimaryValue,
    <int, Color>{
      50: Color(0xFFFCE4EC),
      100: Color(0xFFF8BBD0),
      200: Color(0xFFF48FB1),
      300: Color(0xFFF06292),
      400: Color(0xFFEC407A),
      500: Color(_BrasileiraoPrimaryValue),
      600: Color(0xFFD81B60),
      700: Color(0xFFC2185B),
      800: Color(0xFFAD1457),
      900: Color(0xFF880E4F),
    },
  );
  static const int _BrasileiraoPrimaryValue = 0xFF00FF00;

  static const Color background = Color.fromARGB(255, 13, 4, 94);

  static ButtonThemeData buttonTheme({
    Color color = Colors.white,
    double padding = 30,
  }) {
    return ButtonThemeData(
      buttonColor: color,
      padding: EdgeInsets.symmetric(vertical: padding),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(150)),
      ),
    );
  }

  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primarySwatch: color,
    primaryColor: color,
    textTheme: GoogleFonts.wendyOneTextTheme(
      ThemeData.dark().textTheme,
    ),
    buttonTheme: buttonTheme(),
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          titleTextStyle: GoogleFonts.wendyOne(fontSize: 20),
        ),
  );

  static outlineButtonStyle({required Color color}) {}
}
