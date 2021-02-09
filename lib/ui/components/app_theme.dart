import 'package:flutter/material.dart';

ThemeData makeAppTheme() {

  final primaryColor = Color.fromRGBO(136, 14, 79, 1);
  final primaryColorDark = Color.fromRGBO(96, 0, 39, 1);
  final primaryColorLigth = Color.fromRGBO(188, 71, 123, 1);
  final inputDecorationTheme = InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: primaryColorLigth),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
      ),
      alignLabelWithHint: true);
  final textTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: primaryColorDark),
  );

  final buttonTheme = ButtonThemeData(
      colorScheme: ColorScheme.light(primary: primaryColor),
      buttonColor: primaryColor,
      splashColor: primaryColorLigth,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));

  return ThemeData(
      primaryColor: primaryColorDark,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLigth,
      accentColor: primaryColor,
      backgroundColor: Colors.white,
      textTheme: textTheme,
      inputDecorationTheme: inputDecorationTheme,
      buttonTheme: buttonTheme);
}
