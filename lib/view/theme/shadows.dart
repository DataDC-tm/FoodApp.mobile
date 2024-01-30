import 'package:flutter/material.dart';

class GeneralShadow {
  const GeneralShadow._();
  static List<BoxShadow> neomorphsBox = [
    const BoxShadow(
      color: Color(0x3F000000),
      blurRadius: 7,
      offset: Offset(7, 7),
      spreadRadius: 0,
    ),
    const BoxShadow(
      color: Color(0x3F5B5B5B),
      blurRadius: 7,
      offset: Offset(-5, -5),
      spreadRadius: 0,
    ),
  ];
  static List<BoxShadow> radiance = [
    BoxShadow(
      color: Color(0x3FFDAB21),
      blurRadius: 30,
      offset: Offset(0, 4),
      spreadRadius: 0,
    )
  ];
}
