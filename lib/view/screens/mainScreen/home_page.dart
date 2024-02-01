import 'package:flutter/material.dart';
import 'package:food_app/constant/dimens.dart';
import 'package:food_app/gen/assets.gen.dart';
import 'package:food_app/view/theme/colors/general_colors.dart';
import 'package:food_app/view/theme/styles/home_style.dart';

import 'package:food_app/view/widgets/General/background_widget.dart';
import 'package:get/get.dart';

import '../../widgets/home/app_bar.dart';
import '../../widgets/home/category.dart';
import '../../widgets/home/off_food.dart';
import '../../widgets/home/recommended.dart';
import '../../widgets/home/slider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  RxInt selectedIndexReview = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralColors.backgroundPrimary,
        appBar: const CustomAppBar(),

        //body
        body: Padding(
          padding: EdgeInsets.all(Dimens.bodyMargin),
          child: const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                HomeSlider(),
                //Category
                HomeCategory(),
                //Off Food
                HomeOffFood(),
                //Box Recommended food
                RecommendedFood(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
