import 'package:flutter/material.dart';
import 'package:sneakers_dept/themes/color_themes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey1Color(),
      body: Center(child: Text('Home Screen')),
    );
  }
}
