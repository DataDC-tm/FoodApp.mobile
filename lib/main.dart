import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/view/screens/mainScreen/home_page.dart';
import 'package:food_app/view/screens/signUp/login_screen.dart';
import 'package:food_app/view/theme/colors/general_colors.dart';
import 'package:food_app/view/theme/shadows.dart';

import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: GeneralColors.backgroundPrimary,
    systemNavigationBarColor: GeneralColors.backgroundPrimary,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('fa', 'IR'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        primaryColor: GeneralColors.primary,
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}
