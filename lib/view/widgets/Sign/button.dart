import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colors/general_colors.dart';
import '../../theme/styles/general_style.dart';

class SignButton extends StatelessWidget {
  SignButton._();
  SignButton({super.key, required this.title, required this.onpress});
  String title = 'ورود';
  void Function() onpress = () {};
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Get.height / 16,
      decoration: const BoxDecoration(
        color: GeneralColors.primary,
        borderRadius: BorderRadius.all(Radius.circular(66)),
      ),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
          elevation: MaterialStatePropertyAll(0.0),
        ),
        onPressed: onpress,
        child: Center(
          child: Text(
            title,
            style: GeneralStyle.button,
          ),
        ),
      ),
    );
  }
}
