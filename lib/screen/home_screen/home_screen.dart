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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              //Header
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Hallo, Alex'),
                      Text('@alexkeinn'),
                    ],
                  ),
                  CircleAvatar()
                ],
              ),

              //Filter
              Container(
                width: 80,
                height: 40,
                color: AppColor.secondaryColor(),
                child: Center(
                  child: Text(
                    'Running',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
