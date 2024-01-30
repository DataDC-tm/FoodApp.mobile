import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/general_colors.dart';

class GeneralStyle {
  static TextStyle button = TextStyle(
    fontSize: Get.height / 50,
    fontWeight: FontWeight.w600,
    fontFamily: 'vazir_medium',
    color: Colors.white
  );
    static const TextStyle hintStyle = TextStyle(
    fontFamily: 'vazir_medium',
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: GeneralColors.primary,
  );
}
