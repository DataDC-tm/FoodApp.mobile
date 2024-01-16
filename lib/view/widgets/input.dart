import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/dimens.dart';
import '../theme/colors/general_colors.dart';
import '../theme/styles/sign_style.dart';

class SignTextField extends StatelessWidget {
  SignTextField({
    super.key,
    required this.hint,
  });
  String hint = 'نام و نام خانوداگی';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Get.height / 15,
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.medium,
        vertical: Dimens.small / 1.2,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(66)),
        border: Border(
            bottom: BorderSide(color: GeneralColors.primary, width: 3.1),
            left: BorderSide(color: GeneralColors.primary, width: 3.8),
            right: BorderSide(color: GeneralColors.primary, width: 3.8),
            top: BorderSide(color: GeneralColors.primary, width: 3.8)),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: SignStyle.hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
