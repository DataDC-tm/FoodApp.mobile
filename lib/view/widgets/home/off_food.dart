import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constant/dimens.dart';
import 'package:food_app/constant/extensions.dart';
import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';
import '../../theme/colors/general_colors.dart';
import '../../theme/shadows.dart';
import '../../theme/styles/home_style.dart';
import '../General/background_widget.dart';

//TODO: Box Price Moshkel dare sizesh va widget roye background kol safhe ro nemigire
class HomeOffFood extends StatelessWidget {
  const HomeOffFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BoxBg(
      child: Container(
        height: Get.height / 3.7,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.png.home.backSlider.path),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            //cart product(food)
            Positioned(
              top: Get.height / 17,
              left: Get.width / 25,
              child: Container(
                width: 230.w,
                height: Get.height / 5.2,
                decoration: BoxDecoration(
                    color: GeneralColors.backgroundPrimary,
                    borderRadius:
                        BorderRadius.all(Radius.circular(14.r))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Dimens.small.height,
                    //title\name product(food)
                    Text(
                      'خوراک دریایی آبپز',
                      style: HomeStyle.offTitle,
                    ),
                    Dimens.small.height,
                    //stars
                    const _Stars(),
                    (Dimens.small).height,
                    //prices
                    const _BoxPrice(),
                  ],
                ),
              ),
            ),
            //image food in top cart
            Positioned(
              left: Get.width / 9,
              child: Container(
                width: 135.w,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFDAB21),
                  shape: OvalBorder(),
                  shadows: GeneralShadow.radiance,
                ),
                child: Image.asset(Assets.images.png.defultOffCart.path),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BoxPrice extends StatelessWidget {
  const _BoxPrice();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60.h,
      color: GeneralColors.primary,
      child: Row(
        children: [
          //icon buy
          Container(
            padding: EdgeInsets.all(Dimens.small / 2),
            margin:
                EdgeInsets.only(right: 10.w, left: 8.w),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: SvgPicture.asset(
                Assets.images.svg.basket,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //price
          Container(
            width: 172.w,
            padding: EdgeInsets.only(
              right: Dimens.small / 2,
              top: Dimens.small / 2.5,
              bottom: Dimens.small / 2.5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(32.r)),
              gradient: GradientColors.boxPrice,
            ),
            //price
            child: Text(
              '360,000',
              style: HomeStyle.price,
            ),
          ),
        ],
      ),
    );
  }
}

class _Stars extends StatelessWidget {
  const _Stars();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: Get.height / 50,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              bottom: 10.h,
              left: index == 0 ? 80.w : 2,
            ),
            decoration: const ShapeDecoration(
              shape: StarBorder(
                side: BorderSide(
                  color: Colors.orange,
                  width: 3,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
