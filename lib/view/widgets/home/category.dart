
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/dimens.dart';
import '../../../gen/assets.gen.dart';
import '../../theme/colors/general_colors.dart';
import '../../theme/styles/home_style.dart';
import '../General/background_widget.dart';

class HomeCategory extends StatelessWidget {
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
          cacheExtent: Get.width,
          itemExtent: Get.width / 5.38,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                margin: EdgeInsets.only(right: Dimens.small / 1.5),
                padding: EdgeInsets.all(Dimens.small / 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        Assets.images.png.home.categoryItem.path),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.small)),
                ),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: GeneralColors.primary, width: 2),
                      borderRadius: BorderRadius.all(
                          Radius.circular(Dimens.small / 2)),
                    ),
                    child: const Center(
                      child: Text(
                        'قست فود',
                        style: HomeStyle.categoryTitle,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
