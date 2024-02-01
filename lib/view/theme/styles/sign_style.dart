import 'package:flutter/material.dart';
import 'package:food_app/view/theme/colors/general_colors.dart';
import 'package:get/get.dart';

class SignStyle {
  SignStyle._();
  static TextStyle title = TextStyle(
    fontSize: Get.height / 26,
    fontWeight: FontWeight.w800,
    fontFamily: 'vazir_medium',
  );
  static TextStyle hint = TextStyle(
    fontSize: Get.height / 60,
    fontWeight: FontWeight.w700,
    fontFamily: 'vazir_medium',
    color: GeneralColors.hint,
  );
  static TextStyle textForNextPage = TextStyle(
    fontSize: Get.height / 65,
    fontWeight: FontWeight.w600,
    fontFamily: 'vazir_medium',
    color: GeneralColors.primary,
  );
}
