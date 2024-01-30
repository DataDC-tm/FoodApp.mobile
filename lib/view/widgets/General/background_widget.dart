
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/dimens.dart';
import '../../theme/colors/general_colors.dart';
import '../../theme/shadows.dart';

class BoxBg extends StatelessWidget {
  BoxBg({
    super.key,
    required this.child,
  });
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(Dimens.bodyMargin / 1.4),
      margin: EdgeInsets.all(Dimens.bodyMargin / 1.3),
      decoration: BoxDecoration(
        boxShadow: GeneralShadow.neomorphsBox,
        color: GeneralColors.backgroundPrimary,
        borderRadius: BorderRadius.all(Radius.circular(Get.width / 20)),
      ),
      child: child,
    );
  }
}
