import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sneakers_dept/screen/home%20screen/home_screen.dart';
import 'package:sneakers_dept/themes/color_themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int duration = 2;
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: duration), () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
    super.initState();
  }

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
