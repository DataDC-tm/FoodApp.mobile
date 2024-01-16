import 'package:flutter/material.dart';
import 'package:food_app/constant/dimens.dart';
import 'package:food_app/constant/extensions.dart';
import 'package:food_app/gen/assets.gen.dart';
import 'package:food_app/view/screens/signUp/login_screen.dart';
import 'package:food_app/view/screens/signUp/verify.dart';
import 'package:food_app/view/theme/colors/general_colors.dart';
import 'package:food_app/view/theme/styles/sign_style.dart';
import 'package:get/get.dart';
import '../../widgets/Sign/panel.dart';
import '../../widgets/input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                title: 'ثبت نام',
                onPress: () => Get.to(() => const VerifyScreen()),
                child: [
                  //input for enter last * first name
                  SignTextField(hint: 'نام و نام خانوادگی'),
                  (Dimens.large + 10).height,
                  //input for enter phone number
                  SignTextField(hint: 'تلفن همراه'),
                  (Dimens.large + 10).height,
                ],
              ),
              (Get.height / 7).height,
              TextButton(
                onPressed: () => Get.to(() => const LoginScreen()),
                child: Text(
                  'صفحه ورود / بعدا وارد میشم',
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
