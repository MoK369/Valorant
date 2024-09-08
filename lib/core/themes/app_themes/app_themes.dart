import 'package:flutter/material.dart';
import 'package:valorent/core/defined_fonts/defined_fonts.dart';

class AppThemes {
  static const Color darkPrimaryColor = Color(0xFF06111c);
  static const Color darkOnPrimaryColor = Color(0xFFFD4556);
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: darkPrimaryColor,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: darkOnPrimaryColor),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: darkOnPrimaryColor),
      tabBarTheme: TabBarTheme(
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
            shape: BoxShape.rectangle,
            color: AppThemes.darkOnPrimaryColor,
            borderRadius: BorderRadius.circular(20)),
      ),
      textTheme: const TextTheme(
          titleSmall: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontFamily: DefinedFonts.VALORANT)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: darkOnPrimaryColor,
              foregroundColor: Colors.white)));
}
