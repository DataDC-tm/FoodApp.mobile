import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/general_colors.dart';

class HomeStyle {
  static TextStyle categoryTitle = TextStyle(
    color: Color(0xFFFDAB21),
    fontSize: 18.sp,
    fontFamily: 'vazir_medium',
    fontWeight: FontWeight.w700,
  );
  static TextStyle recommendedTitle = TextStyle(
    color: GeneralColors.primary,
    fontFamily: 'vazir_medium',
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle price = TextStyle(
    color: Color(0xFF0FA958),
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle offTitle = TextStyle(
    fontFamily: 'vazir_medium',
    color: Colors.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle descriptionRecommendedDishes = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontFamily: 'vazir_medium',
    fontWeight: FontWeight.w700,
  );
}
