import 'package:flutter/material.dart';
import 'package:organico_exem_/core/constants/const.dart';

ThemeData get darkMode => ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white)),
      buttonTheme: ButtonThemeData(buttonColor: ColorConst.redConst),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: ColorConst.redConst,
        ),
      ),
      scaffoldBackgroundColor: ColorConst.blackConst,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 21.25,
          fontWeight: FontWeight.w600,
          color: ColorConst.whiteConst,
        ),
        headline2: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
          color: ColorConst.whiteConst,
          overflow: TextOverflow.visible,
        ),
        headline3: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w400,
          color: ColorConst.blackConst,
        ),
      ),
      iconTheme: IconThemeData(
        color: ColorConst.whiteConst,
      ),
    );