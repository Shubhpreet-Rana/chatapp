import 'package:flutter/material.dart';
import '../app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = _darkTheme;

  static ThemeData lightTheme = _lightTheme;
}

ThemeData _lightTheme = ThemeData.from(
  colorScheme: ColorScheme.light(primary: AppColors.primary),
  useMaterial3: true,
).copyWith(
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  dialogBackgroundColor: AppColors.white,
  iconTheme: IconThemeData(color: AppColors.primary),
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    titleTextStyle: const TextStyle(color: AppColors.white),
    backgroundColor: AppColors.appBarBackgroundColor,
    iconTheme: IconThemeData(color: AppColors.gray),
    actionsIconTheme: IconThemeData(color: AppColors.gray),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: AppColors.primary,
    unselectedLabelColor: AppColors.black,
    indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 3.0, color: AppColors.primary),
        insets: const EdgeInsets.symmetric(horizontal: 150.0)),
  ),
);

ThemeData _darkTheme = ThemeData.from(
  colorScheme: ColorScheme.dark(primary: AppColors.primary),
).copyWith(
  scaffoldBackgroundColor: AppColors.black,
  iconTheme: const IconThemeData(color: AppColors.white),
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    titleTextStyle: const TextStyle(color: AppColors.white),
    backgroundColor: AppColors.black,
    iconTheme: const IconThemeData(color: AppColors.white),
    actionsIconTheme: const IconThemeData(color: AppColors.white),
    foregroundColor: AppColors.gray,
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: AppColors.white,
    unselectedLabelColor: AppColors.white,
    indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 3.0, color: AppColors.white),
        insets: EdgeInsets.symmetric(horizontal: 150.0)),
  ),
);
