import 'package:flutter/material.dart';

class GeneralColors {
  static const primary = Color.fromRGBO(253, 171, 33, 1);
  static const backgroundPrimary = Color.fromRGBO(35, 35, 35, 1);
  static const hint = Color.fromRGBO(92, 92, 92, 0.8);
}

class GradientColors {
  // ignore: prefer_const_constructors
  static const LinearGradient boxPrice = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [Colors.white,Color(0xFFFDAB21)],
  );
}
