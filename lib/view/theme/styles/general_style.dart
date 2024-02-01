import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../colors/general_colors.dart';

class GeneralStyle {
  static TextStyle button = TextStyle(
      fontSize: Get.height / 50,
      fontWeight: FontWeight.w600,
      fontFamily: 'vazir_medium',
      color: Colors.white);
  static TextStyle hintStyle = TextStyle(
    fontFamily: 'vazir_medium',
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    color: GeneralColors.primary,
  );
}
