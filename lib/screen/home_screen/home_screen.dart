import 'package:flutter/material.dart';
import 'package:sneakers_dept/themes/color_themes.dart';
import 'package:sneakers_dept/themes/themes.dart';
import 'package:sneakers_dept/widgets/reusable_components/reusable_components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Header
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       children: [
                //         Text('Hallo, Alex'),
                //         Text('@alexkeinn'),
                //       ],
                //     ),
                //     CircleAvatar()
                //   ],
                // ),

                //Filter
                // Row(
                //   children: [
                //     Container(
                //       margin: EdgeInsets.symmetric(
                //         horizontal: 10,
                //       ),
                //       width: 80,
                //       height: 40,
                //       color: AppColor.priceColor(),
                //       child: Center(
                //         child: Text(
                //           'All Shoes',
                //         ),
                //       ),
                //     ),
                //     Container(
                //       margin: EdgeInsets.symmetric(
                //         horizontal: 10,
                //       ),
                //       width: 80,
                //       height: 40,
                //       color: AppColor.grey1Color(),
                //       child: Center(
                //         child: Text(
                //           'Running',
                //         ),
                //       ),
                //     ),
                //     Container(
                //       margin: EdgeInsets.symmetric(
                //         horizontal: 10,
                //       ),
                //       width: 80,
                //       height: 40,
                //       color: AppColor.grey1Color(),
                //       child: Center(
                //         child: Text(
                //           'Training',
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                CustomTextField(
                  backgroundColor: AppColor.grey4Color(),
                  hintText: 'Search Location',
                  suffixIcon: Icon(Icons.search),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 120,
                    ),
                    Text(
                      'Hyderabad',
                      style: mainInfoTextStyle,
                    ),
                    Text(
                      '31°',
                      style: mainInfoTextStyle.copyWith(
                        fontSize: 70,
                      ),
                    ),
                  ],
                ),
                CustomContainer(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                    vertical: defaultMargin,
                  ),
                  containerType: RoundedContainerType.noOutline,
                  radius: defaultRadius,
                  backgroundColor: AppColor.grey4Color(),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'TIME',
                            style: defaultTextStyle,
                          ),
                          Text(
                            '11:25 AM',
                            style: defaultTextStyle.copyWith(
                              fontWeight: boldWeight,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'UV',
                            style: defaultTextStyle,
                          ),
                          Text(
                            '4',
                            style: defaultTextStyle.copyWith(
                              fontWeight: boldWeight,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '% RAIN',
                            style: defaultTextStyle,
                          ),
                          Text(
                            '58 %',
                            style: defaultTextStyle.copyWith(
                              fontWeight: boldWeight,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'AQ',
                            style: defaultTextStyle,
                          ),
                          Text(
                            '22',
                            style: defaultTextStyle.copyWith(
                              fontWeight: boldWeight,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomContainer(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                    vertical: defaultMargin,
                  ),
                  containerType: RoundedContainerType.noOutline,
                  radius: defaultRadius,
                  backgroundColor: AppColor.grey4Color(),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SUNRISE & SUNSET',
                        style: defaultTextStyle,
                      ),
                      Image.asset(
                        'assets/logo.png',
                        width: 200,
                      ),
                      Text(
                        'Length of day: 13H 12M',
                        style: defaultTextStyle,
                      ),
                      Text(
                        'Remaining daylight: 9H 22M',
                        style: defaultTextStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
