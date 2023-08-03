import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:ai_application_dct/features/settings/presentation/pod/settings_pod.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appTheme = Provider((ref) => AppTheme(ref));

class AppTheme {
  final ProviderRef ref;
  AppTheme(this.ref);

  bool get isDarkMode => ref.watch(themeModeProvider);

  ThemeData get theme => isDarkMode ? darkTheme : lightTheme;

  Color get scaffoldBackgroundColor =>
      isDarkMode ? AppColor.black : AppColor.offWhite;
  Color get appBarColor => isDarkMode ? AppColor.black : AppColor.offWhite;
  Color get accentColor => isDarkMode ? AppColor.black : AppColor.deepOceanBlue;

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(primary: AppColor.emeraldGreen2),
    // scaffoldBackgroundColor: AppColor.white,
    // appBarTheme: const AppBarTheme(
    //   foregroundColor: AppColor.black,
    //   backgroundColor: AppColor.white,
    //   titleTextStyle: TextStyle(
    //     color: AppColor.black,
    //     fontWeight: FontWeight.w700,
    //     fontSize: 20,
    //   ),
    // ),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     foregroundColor: MaterialStateProperty.resolveWith<Color>(
    //       (states) {
    //         if (states.contains(MaterialState.disabled)) {
    //           return AppColor.grey;
    //         }
    //         return AppColor.black;
    //       },
    //     ),
    //     backgroundColor: const MaterialStatePropertyAll(AppColor.white),
    //     elevation: const MaterialStatePropertyAll(4),
    //     shadowColor: const MaterialStatePropertyAll(AppColor.emeraldGreen),
    //   ),
    // ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    // scaffoldBackgroundColor: AppColor.black,
    // appBarTheme: const AppBarTheme(
    //   foregroundColor: AppColor.white,
    //   backgroundColor: AppColor.black,
    //   titleTextStyle: TextStyle(
    //     color: AppColor.white,
    //     fontWeight: FontWeight.w700,
    //     fontSize: 20,
    //   ),
    // ),
    colorScheme: ColorScheme.dark(primary: AppColor.emeraldGreen),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(
    //     foregroundColor: MaterialStateProperty.resolveWith((states) {
    //       if (states.contains(MaterialState.disabled)) {
    //         return AppColor.grey;
    //       }
    //       return AppColor.white;
    //     }),
    //     backgroundColor: const MaterialStatePropertyAll(AppColor.black),
    //     elevation: const MaterialStatePropertyAll(4),
    //     shadowColor: const MaterialStatePropertyAll(AppColor.emeraldGreen),
    //   ),
    // ),
    // textTheme: const TextTheme(
    //   titleLarge:_whiteFontTextStyle,
    //   titleMedium: _whiteFontTextStyle,
    //   titleSmall: _whiteFontTextStyle,
    //   bodyLarge: _whiteFontTextStyle,
    //   bodyMedium: _whiteFontTextStyle,
    //   bodySmall: _whiteFontTextStyle,
    // ),
    // iconTheme: const IconThemeData(
    //   color: AppColor.white,
    // )
  );
}
