import 'package:flutter/material.dart';

class ColorConst {
  static Color blueConst = Colors.blue;
  static Color whiteConst = Colors.white;
  static Color blackConst = Colors.black;
  static Color yellowConst = Colors.yellow;
  static Color greyConst = Colors.grey;
  static Color greenConst = Colors.green;
  static Color redConst = Colors.red;
  static Color purpleAccent = const Color.fromRGBO(170, 0, 35, 0.15);
  static Color blueWhite = const Color(0xffE9F0F7);
  static Color darkGrey = const Color(0xff696974);

  static List colors = [
    const Color.fromRGBO(170, 0, 35, 0.15),
    const Color.fromRGBO(46, 204, 113, 0.15),
    const Color.fromRGBO(234, 129, 47, 0.15),
    const Color.fromRGBO(118, 178, 38, 0.15),
    const Color.fromRGBO(151, 3, 29, 0.15),
    const Color.fromRGBO(233, 176, 79, 0.15),
    const Color.fromRGBO(63, 125, 60, 0.15)
  ];
}

class PaddingMargenConst {
  static const EdgeInsets kExtraSmallPM = EdgeInsets.all(6);
  static const EdgeInsets kSmallPM = EdgeInsets.all(10);
  static const EdgeInsets kMediumPM = EdgeInsets.all(14);
  static const EdgeInsets kLargePM = EdgeInsets.all(18);
  static const EdgeInsets kExtraLargePM = EdgeInsets.all(22);
}

class FontConst {
  static const double kExtraSmallFont = 8.0;
  static const double kSmallFont = 12.0;
  static const double kMediumFont = 15.0;
  static const double kLargeFont = 20.0;
  static const double kExtraLargeFont = 28.0;
}

class RadiusConst {
  static const Radius kExtraSmallRadius = Radius.circular(8);
  static const Radius kSmallRadius = Radius.circular(12);
  static const Radius kMediumRadius = Radius.circular(16);
  static const Radius kLargeRadius = Radius.circular(20);
  static const Radius kExtraLargeRadius = Radius.circular(25);
}
