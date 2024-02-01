import 'package:flutter/material.dart';

class GeneralShadow {
  const GeneralShadow._();
  static const List<BoxShadow> neomorphsBox = [
     BoxShadow(
      color: Color(0x3F000000),
      blurRadius: 7,
      offset: Offset(7, 7),
      spreadRadius: 0,
    ),
     BoxShadow(
      color: Color(0x3F5B5B5B),
      blurRadius: 7,
      offset: Offset(-5, -5),
      spreadRadius: 0,
    ),
  ];
  static const List<BoxShadow> radiance = [
     BoxShadow(
      color: Color(0x3FFDAB21),
      blurRadius: 30,
      offset: Offset(0, 4),
      spreadRadius: 0,
    )
  ];
}
