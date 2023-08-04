import 'package:flutter/material.dart';
import 'package:sneakers_dept/screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sneakers Dept',
      home: SplashScreen(),
    );
  }
}
