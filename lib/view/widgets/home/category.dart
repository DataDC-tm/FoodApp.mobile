
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/dimens.dart';
import '../../../gen/assets.gen.dart';
import '../../theme/colors/general_colors.dart';
import '../../theme/styles/home_style.dart';
import '../General/background_widget.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory._();
  const HomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BoxBg(
      child: SizedBox(
        width: Get.width,
        height: Get.height / 12,
        child: ListView.builder(
          itemCount: 4,
          itemExtent: Get.width / 5.38,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: Dimens.small / 1.5),
              padding: EdgeInsets.all(Dimens.small / 2),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      Assets.images.png.home.categoryBg.path),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.small)),
              ),
              child: Center(
                child: Text(
                  'فست فود',
                  style: HomeStyle.categoryTitle,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
