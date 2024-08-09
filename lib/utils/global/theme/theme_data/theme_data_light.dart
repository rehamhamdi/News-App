import 'package:flutter/material.dart';
import 'package:news/utils/global/theme/app_color/app_color_light.dart';

ThemeData getThemeDataLight()=>ThemeData(
  brightness: Brightness.light,
      primaryColor: AppColorLight.primaryColor,
      scaffoldBackgroundColor: AppColorLight.scaffoldBackgroundColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColorLight.bottomNavBarBackgroundColor,
          elevation: 2,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
      appBarTheme: const AppBarTheme(
         iconTheme:  IconThemeData(
        size: 20,
        color: AppColorLight.iconColor,
      ),
          elevation: 0,
          backgroundColor: AppColorLight.appBarBackgroundColor,
          titleTextStyle: TextStyle(
            color: AppColorLight.titleTextColor,
            fontSize: 18,
          )),
      dividerColor: AppColorLight.dividerColor,
);