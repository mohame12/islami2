import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';


ThemeData lightTheme = ThemeData(

    primaryColor: defcolor,
    textTheme: const TextTheme(
        titleLarge: AppTextStyles.title30,
        bodyMedium: AppTextStyles.body25_normal,
        bodySmall: AppTextStyles.body20,
        headlineLarge: AppTextStyles.body25_meseri),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xffB7935F),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: AppTextStyles.title30,
        iconTheme: IconThemeData(color: Colors.black)));

ThemeData darkTheme = ThemeData(
    primaryColor: darkcolor,
    textTheme: TextTheme(
        titleLarge: AppTextStyles.title30.copyWith(color: Colors.white),
        bodyMedium: AppTextStyles.body25_normal.copyWith(color: Colors.white),
        bodySmall: AppTextStyles.body20.copyWith(color: Colors.white),
        headlineLarge: AppTextStyles.body25_meseri.copyWith(color: Colors.white)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: darkcolor,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    appBarTheme: AppBarTheme(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: AppTextStyles.title30.copyWith(color:Colors.white),
        iconTheme: const IconThemeData(color: Colors.white)));
