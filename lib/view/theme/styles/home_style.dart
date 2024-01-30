import 'package:flutter/material.dart';
import 'package:food_app/view/theme/colors/general_colors.dart';

class HomeStyle {
  static const TextStyle price = TextStyle(
    fontFamily: 'vazir_medium',
    color: Color(0xFF0FA958),
    fontSize: 7,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle off = TextStyle(
    fontFamily: 'vazir_medium',
    color: Colors.white,
    fontSize: 10,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle descriptionRecommendedDishes = TextStyle(
    color: Colors.white,
    fontSize: 8,
    fontFamily: 'vazir_medium',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle categoryTitle = TextStyle(
    color: Color(0xFFFDAB21),
    fontSize: 12,
    fontFamily: 'Vazir',
    fontWeight: FontWeight.w700,
    height: 0,
  );
}
