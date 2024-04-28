import 'package:flutter/material.dart';
import 'package:exchange_rate/constants/constants.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: Constants.whiteColor,
  appBarTheme: AppBarTheme(backgroundColor: Constants.blackColor),
  textTheme: TextTheme(
    titleSmall: TextStyle(
      color: Constants.whiteColor,
      fontFamily: "lalezar",
      fontSize: 20,
    ),
    titleMedium: TextStyle(
      color: Constants.whiteColor,
      fontFamily: "lalezar",
      fontSize: 10,
    ),
    bodyMedium: TextStyle(
      color: Constants.blackColor,
      fontFamily: "iranSans",
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
    bodySmall: TextStyle(
      color: Constants.blackColor,
      fontFamily: "iranSans",
      fontSize: 18,
    ),
    bodyLarge: TextStyle(
      color: Constants.blackColor,
      fontFamily: "iranSans",
      fontSize: 16,
    ),
    titleLarge: TextStyle(
      color: Constants.blackColor,
      fontFamily: "lalezar",
      fontSize: 20,
    ),
    displayLarge: const TextStyle(
      color: Colors.blue,
      fontFamily: "lalezar",
      fontSize: 20,
    ),
  ),
);
