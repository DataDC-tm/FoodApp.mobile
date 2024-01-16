import 'package:flutter/material.dart';
import 'package:food_app/constant/extensions.dart';
import 'package:food_app/view/widgets/Sign/button.dart';
import 'package:get/get.dart';

import '../../../constant/dimens.dart';
import '../../theme/styles/sign_style.dart';

class SignPanel extends StatelessWidget {
  SignPanel({
    super.key,
    required this.child,
    required this.title,
    required this.onPress,
  });
  List<Widget> child;
  String title = 'ثبت نام';
  void Function() onPress = () {};
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Get.height / 2.1,
      margin: EdgeInsets.symmetric(horizontal: (Dimens.large * 3.2)),
      padding: EdgeInsets.symmetric(horizontal: Dimens.medium),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.66),
        borderRadius: BorderRadius.all(Radius.circular(9)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //title panel register
          Text(
            title,
            style: SignStyle.title,
          ),
          (Dimens.large * 2).height,

          Column(
            children: child,
          ),
          SignButton(
            title: 'ورود',
            onpress: onPress,
          ),
        ],
      ),
    );
  }
}
