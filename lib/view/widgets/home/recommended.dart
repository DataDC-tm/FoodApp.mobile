import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/constant/dimens.dart';
import 'package:food_app/constant/extensions.dart';
import 'package:food_app/gen/assets.gen.dart';
import 'package:food_app/view/theme/colors/general_colors.dart';
import 'package:food_app/view/theme/colors/home_colors.dart';
import 'package:food_app/view/theme/styles/general_style.dart';
import 'package:food_app/view/theme/styles/home_style.dart';
import 'package:get/get.dart';

import '../General/background_widget.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BoxBg(
      child: SizedBox(
        height: Get.height,
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            //Cart food
            return Container(
              width: double.maxFinite,
              height: 240.h,
              margin: EdgeInsets.only(bottom: Dimens.small),
              padding: EdgeInsets.all(Dimens.small),
              decoration: BoxDecoration(
                color: HomeColors.backgroundRecommendedDishes,
                borderRadius: BorderRadius.all(Radius.circular(Dimens.small)),
              ),
              child: FittedBox(
                child: Row(
                  children: [
                    //image food
                    ClipRRect(
                      child: Image.asset(
                        Assets.images.png.home.rectangle.path,
                      ),
                    ), //title

                    Padding(
                      padding: EdgeInsets.only(
                        right: Dimens.small,
                        top: Dimens.small,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //title
                          Text(
                            'میکس سنتی',
                            style: HomeStyle.recommendedTitle,
                          ),
                          Dimens.small.height,
                          //description
                          Text(
                            '''این پیشنهاد خوشمزه سان دی رو نادیده نگیرین!
میکس چنجه ، کباب گوشت 200 گرمی ،
جوجه کباب طعم دار شده
و مخلفات + نان داغ و روغن کباب''',
                            style: HomeStyle.descriptionRecommendedDishes,
                            softWrap: true,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                          ),
                          Dimens.large.height,
                          //button for buy product
                          Container(
                            width: 150.w,
                            height: 60.h,
                            margin: EdgeInsets.only(right: Get.width / 2),
                            decoration: BoxDecoration(
                              color: GeneralColors.primary,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(1000.r)),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                padding:
                                    MaterialStatePropertyAll(EdgeInsets.zero),
                                elevation: MaterialStatePropertyAll(0.0),
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.transparent),
                              ),
                              child: Text(
                                'مشاهده',
                                style:
                                    GeneralStyle.button.copyWith(fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
