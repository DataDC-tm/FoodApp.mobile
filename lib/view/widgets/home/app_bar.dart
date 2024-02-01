import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constant/dimens.dart';
import 'package:food_app/view/theme/styles/general_style.dart';
import 'package:food_app/view/theme/styles/home_style.dart';
import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';
import '../../theme/colors/general_colors.dart';
import '../../theme/shadows.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  Widget get child => Row(
        children: [
          Container(
            width: Get.width / 10,
            height: Get.height / 17,
            margin: EdgeInsets.only(
              left: Get.width / 20,
              right: Get.width / 16,
              top: Get.width / 30,
            ),
            decoration:  const BoxDecoration(
              boxShadow: GeneralShadow.neomorphsBox,
              color: GeneralColors.backgroundPrimary,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(Assets.images.svg.menu),
            ),
          ),
          //input for search product
          Container(
            width: Get.width / 1.3795,
            height: Get.height / 18,
            margin: EdgeInsets.only(top: Get.width / 30, left: Get.width / 16),
            padding: EdgeInsets.symmetric(horizontal: Dimens.large *1.4, vertical: Get.width / 140),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(Get.width)),
              boxShadow: GeneralShadow.neomorphsBox,
              color: GeneralColors.backgroundPrimary,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'جستجو...',
                hintStyle: GeneralStyle.hintStyle,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
