import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            width: 72.07.w,
            margin: EdgeInsets.only(
              left: 30.w,
              right: 40.w,
              top: 32.w,
            ),
            decoration: const BoxDecoration(
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
            width: 532.w,
            height: 70.h,
            margin: EdgeInsets.only(top: 25.h),
            padding: EdgeInsets.symmetric(
                horizontal: Dimens.large * 1.4, vertical: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10000.r)),
              boxShadow: GeneralShadow.neomorphsBox,
              color: GeneralColors.backgroundPrimary,
            ),
            child: TextField(
              autocorrect: true,
              keyboardType: TextInputType.text,
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
  Size get preferredSize => Size.fromHeight(100.h);
}
