import 'package:flutter/material.dart';
import 'package:submission/splash_screen.dart';

const xPrimary = Color(0xFF220B57);

void main() {
  runApp(MaterialApp(
    title: 'Note App',
    theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF220B57, {
          50: Color(0xFFEAE2F5),
          100: Color(0xFFC5A6E1),
          200: Color(0xFFA17ADD),
          300: Color(0xFF7D4ED9),
          400: Color(0xFF5A32D5),
          500: Color(0xFF3B1FBD),
          600: Color(0xFF2E1799),
          700: Color(0xFF210F74),
          800: Color(0xFF14084F),
          900: Color(0xFF070427),
        }),
        fontFamily: 'poppins'),
    home: const SplashScreen(),
  ));
}
