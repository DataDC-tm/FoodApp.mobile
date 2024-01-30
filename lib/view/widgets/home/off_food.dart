import 'package:flutter/material.dart';
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
        height: Get.height / 4,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.png.home.backSlider.path),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            //background
            Positioned.fill(
              child: SvgPicture.asset(
                Assets.images.svg.defaultBgOffMarket,
                fit: BoxFit.fill,
              ),
            ),
            //
            Positioned(
              top: Get.height / 80,
              left: Get.width / 20,
              child: Container(
                width: Get.width / 3,
                height: Get.height / 5,
                child: Stack(
                  children: [
                    //cart
                    Positioned(
                      top: Get.height / 20,
                      left: 0,
                      child: Container(
                        width: Get.width / 3.5,
                        height: Get.height / 5.5,
                        color: GeneralColors.backgroundPrimary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Dimens.small.height,

                            //title
                            const Text(
                              'ماهی کبابی',
                              style: HomeStyle.off,
                            ),
                            Dimens.small.height,

                            //stars
                            const _Stars(),
                            (Dimens.small /2).height,
                            //prices
                            const _BoxPrice(),
                          ],
                        ),
                      ),
                    ),
                    //image food in top cart
                    Positioned(
                      top: 0,
                      left: Get.width / 18,
                      child: Container(
                        width: Get.width / 5.5,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFDAB21),
                          shape: const OvalBorder(),
                          shadows: GeneralShadow.radiance,
                        ),
                        child:
                            Image.asset(Assets.images.png.defultOffCart.path),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BoxPrice extends StatelessWidget {
  const _BoxPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Get.height / 35,
      padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
      color: GeneralColors.primary,
      child: FittedBox(
        child: Row(
          children: [
            //price
            Container(
              width: Get.width,
              height: Get.height / 70,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(22)),
                gradient: GradientColors.boxPrice,
              ),
              //price
              child: const Text(
                '360,000',
                style: HomeStyle.price,
              ),
            ),
            //icon buy
            Container(
              width: Get.width / 8,
              height: Get.height / 80,
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
            )
          ],
        ),
      ),
    );
  }
}

class _Stars extends StatelessWidget {
  const _Stars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: Get.height / 50,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(5),
            decoration: const ShapeDecoration(
              shape: StarBorder(
                side: BorderSide(
                  color: Colors.orange,
                  width: 5,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
