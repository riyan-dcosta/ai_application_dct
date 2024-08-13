import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color white = Color(0xFFFFFFFF);
  static const Color mercury = Color(0xFFE5E5E5);
  static const Color submarineBlue = Color(0xFFB4C2C6);
  static const Color grey = Color(0xFF8C99A2);
  static const Color mud = Color(0xFFB1B6AE);
  static const Color scaffoldBackgroundColor = Color(0xFFE3EDF5);
  static const Color emeraldGreen = Color(0xFF53D46B);
  static const sun = Color(0xFFFCA311);
  static const Color accentColor = Color(0xFF0D2231);
  static const bigStone = Color(0xFF14213D);
  static const Color black = Color(0xFF000000);
}

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: const AppBarTheme(
      foregroundColor: AppColor.black,
      backgroundColor: AppColor.white,
      titleTextStyle: TextStyle(
        color: AppColor.black,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColor.grey;
            }
            return AppColor.black;
          },
        ),
        backgroundColor: const MaterialStatePropertyAll(AppColor.white),
        elevation: const MaterialStatePropertyAll(4),
        shadowColor: const MaterialStatePropertyAll(AppColor.emeraldGreen),
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.black,
    appBarTheme: const AppBarTheme(
      foregroundColor: AppColor.white,
      backgroundColor: AppColor.black,
      titleTextStyle: TextStyle(
        color: AppColor.white,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColor.grey;
          }
          return AppColor.white;
        }),
        backgroundColor: const MaterialStatePropertyAll(AppColor.black),
        elevation: const MaterialStatePropertyAll(4),
        shadowColor: const MaterialStatePropertyAll(AppColor.emeraldGreen),
      ),
    ),
  );
}
