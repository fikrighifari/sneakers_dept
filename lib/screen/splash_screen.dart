import 'package:flutter/material.dart';
import 'package:sneakers_dept/themes/color_themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey1Color(),
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 100,
        ),
      ),
    );
  }
}
