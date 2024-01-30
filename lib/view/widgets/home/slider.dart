
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';
import '../General/background_widget.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BoxBg(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.png.home.backSlider.path),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.all(Radius.circular(Get.width / 20)),
        ),
        child: SvgPicture.asset(
          Assets.images.svg.slider,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}