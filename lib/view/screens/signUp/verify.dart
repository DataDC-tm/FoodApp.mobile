import 'package:flutter/material.dart';
import 'package:food_app/constant/extensions.dart';
import 'package:food_app/view/screens/signUp/register_screen.dart';
import 'package:get/get.dart';

import '../../../constant/dimens.dart';
import '../../../gen/assets.gen.dart';
import '../../theme/styles/sign_style.dart';
import '../../widgets/Sign/panel.dart';
import '../../widgets/input.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
                    height: Get.height,

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.png.sign.background.path),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (Dimens.large * 14).height,
              //panel register
              SignPanel(
                title: 'تایید کد',
                //TODO: inja bayad vared HomePage beshe
                onPress: (){},
                child: [
                  //input for enter last * first name
                  SignTextField(hint: 'کد تایید'),
                  (Dimens.large + 10).height,
                ],
              ),
              (Get.height / 7).height,
              TextButton(
                onPressed: () => Get.offAll(() => const RegisterScreen()),
                child: Text(
                  'بازگشت به صفحه ثبت نام',
                  style: SignStyle.textForNextPage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
