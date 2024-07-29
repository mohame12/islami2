import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami2/core/colors/colors.dart';
import 'package:islami2/core/styles/body_style.dart';

ThemeData lightTheme=ThemeData(
    primaryColor: defcolor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 20,
        backgroundColor: Color(0xffB7935F),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black
    ),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: Colors.transparent,
        titleTextStyle: AppTextStyles.heading1
    )
);

ThemeData darkTheme=ThemeData(
    primaryColor: Color(0xffFACC1D),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 20,
        backgroundColor: Colors.black12,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey
    ),
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light
        ),
        backgroundColor: Colors.black12,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
        actionsIconTheme: IconThemeData(color: Colors.white)
    )
);
