import 'package:flutter/material.dart';
import 'package:speak_with_you/src/config/app_router.dart';
import 'package:speak_with_you/src/presentation/ui/home_screen.dart';
import 'package:speak_with_you/src/utils/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).whenComplete(() {
      context.onReplacement(const HomeScreen());
    });
    return const Scaffold(
        backgroundColor: AppColors.cl182d42,
        body: Center(
          child: SizedBox(
              height: 150,
              width: 150,
              child: Image(image: AssetImage("assets/images/logo.png"))),
        ));
  }
}
