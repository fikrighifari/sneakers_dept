import 'package:flutter/material.dart';
import 'package:sneakers_dept/themes/color_themes.dart';
import 'package:sneakers_dept/themes/themes.dart';
import 'package:sneakers_dept/widgets/cards/movie_card.dart';
import 'package:sneakers_dept/widgets/reusable_components/reusable_components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int? currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  customBottomNavBar() {
    return BottomNavigationBar(
        backgroundColor: AppColor.backgroundColor1(),
        selectedItemColor: AppColor.blueColor(),
        unselectedItemColor: AppColor.grey1Color(),
        currentIndex: currentIndex!,
        onTap: (value) {},
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            activeIcon: Icon(Icons.favorite),
            label: 'Watch List',
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNavBar(),
      backgroundColor: AppColor.backgroundColor4(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
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
              Text(
                'What do you want to watch?',
                style: defaultTextStyle.copyWith(
                  color: AppColor.whiteColor(),
                  fontSize: 18,
                ),
              ),

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
                hintText: 'Search Movie',
                suffixIcon: Icon(Icons.search),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MovieCard(imageFileName: 'image3'),
                        SizedBox(
                          width: defaultMargin,
                        ),
                        MovieCard(imageFileName: 'image2'),
                        SizedBox(
                          width: defaultMargin,
                        ),
                        MovieCard(imageFileName: 'image1'),
                        SizedBox(
                          width: defaultMargin,
                        ),
                      ],
                    ),
                  ),
                  // Icon(
                  //   Icons.cloud,
                  //   size: 120,
                  // ),
                  // Text(
                  //   'Hyderabad',
                  //   style: mainInfoTextStyle,
                  // ),
                  // Text(
                  //   '31°',
                  //   style: mainInfoTextStyle.copyWith(
                  //     fontSize: 70,
                  //   ),
                  // ),
                ],
              ),
              // CustomContainer(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: defaultMargin,
              //     vertical: defaultMargin,
              //   ),
              //   containerType: RoundedContainerType.noOutline,
              //   radius: defaultRadius,
              //   backgroundColor: AppColor.grey4Color(),
              //   width: double.infinity,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Column(
              //         children: [
              //           Text(
              //             'TIME',
              //             style: defaultTextStyle,
              //           ),
              //           Text(
              //             '11:25 AM',
              //             style: defaultTextStyle.copyWith(
              //               fontWeight: boldWeight,
              //             ),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           Text(
              //             'UV',
              //             style: defaultTextStyle,
              //           ),
              //           Text(
              //             '4',
              //             style: defaultTextStyle.copyWith(
              //               fontWeight: boldWeight,
              //             ),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           Text(
              //             '% RAIN',
              //             style: defaultTextStyle,
              //           ),
              //           Text(
              //             '58 %',
              //             style: defaultTextStyle.copyWith(
              //               fontWeight: boldWeight,
              //             ),
              //           ),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           Text(
              //             'AQ',
              //             style: defaultTextStyle,
              //           ),
              //           Text(
              //             '22',
              //             style: defaultTextStyle.copyWith(
              //               fontWeight: boldWeight,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                color: AppColor.backgroundColor4(),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: AppColor.primaryColor(),
                  controller: _tabController,
                  tabs: [
                    Tab(
                      child: Text(
                        'Now Playing',
                        style: defaultTextStyle.copyWith(
                          color: AppColor.whiteColor(),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Upcoming',
                        style: defaultTextStyle.copyWith(
                          color: AppColor.whiteColor(),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Top Rated',
                        style: defaultTextStyle.copyWith(
                          color: AppColor.whiteColor(),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Popular',
                        style: defaultTextStyle.copyWith(
                          color: AppColor.whiteColor(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    TabNowPlayingScreen(),
                    TabNowPlayingScreen(),
                    TabNowPlayingScreen(),
                    TabNowPlayingScreen(),
                  ],
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              // CustomContainer(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: defaultMargin,
              //     vertical: defaultMargin,
              //   ),
              //   containerType: RoundedContainerType.noOutline,
              //   radius: defaultRadius,
              //   backgroundColor: AppColor.grey4Color(),
              //   width: double.infinity,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         'SUNRISE & SUNSET',
              //         style: defaultTextStyle,
              //       ),
              //       // Image.asset(
              //       //   'assets/logo.png',
              //       //   width: 200,
              //       // ),
              //       Text(
              //         'Length of day: 13H 12M',
              //         style: defaultTextStyle,
              //       ),
              //       Text(
              //         'Remaining daylight: 9H 22M',
              //         style: defaultTextStyle,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabNowPlayingScreen extends StatelessWidget {
  const TabNowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              MovieCard(imageFileName: 'image2'),
              SizedBox(
                width: defaultMargin,
              ),
              MovieCard(imageFileName: 'image3'),
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            children: [
              MovieCard(imageFileName: 'image1'),
              SizedBox(
                width: defaultMargin,
              ),
              MovieCard(imageFileName: 'image2'),
            ],
          ),
        ],
      ),
    );
  }
}
