import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';

ThemeData lightTheme=ThemeData(
    primaryColor: defcolor,
    textTheme: TextTheme(headlineLarge: AppTextStyles.heading1.copyWith(color: Colors.black)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
    ),
    appBarTheme:  AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: AppTextStyles.heading1,
        iconTheme: IconThemeData(color: Colors.black)
    )
);





ThemeData darkTheme=ThemeData(
    primaryColor: darkcolor,
    textTheme: TextTheme(headlineLarge: AppTextStyles.heading1.copyWith(color: Colors.white)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: darkcolor,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    appBarTheme:  AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: AppTextStyles.heading1.copyWith(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white)
    )
);

