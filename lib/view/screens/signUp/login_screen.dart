import 'package:flutter/material.dart';
import 'package:food_app/constant/extensions.dart';
import 'package:food_app/view/screens/signUp/register_screen.dart';
import 'package:food_app/view/screens/signUp/verify.dart';
import 'package:get/get.dart';

import '../../../constant/dimens.dart';
import '../../../gen/assets.gen.dart';
import '../../theme/styles/sign_srtyle.dart';
import '../../widgets/Sign/panel.dart';
import '../../widgets/input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
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
                  title: 'ورود',
                  //TODO: bayad vared app beshe
                  onPress: () => Get.to(() => const VerifyScreen()),
                  child: [
                    //input for enter last * first name
                    SignTextField(hint: 'تلفن همراه'),
                    (Dimens.large + 10).height,
                    //input for enter phone number
                    SignTextField(hint: 'کلمه عبور'),
                    (Dimens.large + 10).height,
                  ],
                ),
                (Get.height / 7).height,
                TextButton(
                  onPressed: () => Get.to(() => const RegisterScreen()),
                  child: Text(
                    'صفحه ثبت نام / بعدا وارد میشم',
                    style: SignStyle.textForNextPage,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
