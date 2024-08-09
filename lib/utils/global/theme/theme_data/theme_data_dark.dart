import 'package:flutter/material.dart';
import 'package:news/utils/global/theme/app_color/app_color_dark.dart';

ThemeData getThemeDataDark() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColorDark.primaryColor,
      scaffoldBackgroundColor: AppColorDark.scaffoldBackgroundColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColorDark.bottomNavBarBackgroundColor,
          elevation: 2,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
      appBarTheme: const AppBarTheme(
          iconTheme: const IconThemeData(
            size: 20,
            color: AppColorDark.iconColor,
          ),
          elevation: 0,
          backgroundColor: AppColorDark.appBarBackgroundColor,
          titleTextStyle: TextStyle(
            color: AppColorDark.titleTextColor,
            fontSize: 18,
          )),
      dividerColor: AppColorDark.dividerColor,
    );
