import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AppConfigUI {
  AppConfigUI._();

  static const MaterialColor _primarySwatch = MaterialColor(
    0XFF0000, {
      50: Colors.black,
      100: Colors.black,
      200: Colors.black,
      300: Colors.black,
      400: Colors.black,
      500: Colors.black,
      600: Colors.black,
      700: Colors.black,
      800: Colors.black,
      900: Colors.black,
    }
  );

  static final ThemeData theme = ThemeData(
    primarySwatch: _primarySwatch,
    primaryColor: Colors.black,
    textTheme: GoogleFonts.varelaRoundTextTheme()
  );


}