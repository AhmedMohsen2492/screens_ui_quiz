import 'package:flutter/material.dart';
import 'package:quiz/ui/screens/Moody/tabs/account/moody_account_tab.dart';
import 'package:quiz/ui/screens/Moody/tabs/home/moody_home_tab.dart';
import 'package:quiz/ui/screens/Moody/tabs/menu/moody_menu_tab.dart';
import 'package:quiz/ui/screens/Moody/tabs/shop/moody_shop_tab.dart';
import 'package:quiz/ulits/app_assets.dart';
import 'package:quiz/ulits/app_colors.dart';

class MoodyScreen extends StatefulWidget {
  static String routeName = "moodyScreen";

  const MoodyScreen({super.key});

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  int currentIndex = 0;

  List<Widget> body = [
    const MoodyHomeTab(),
    const MoodyMenuTab(),
    const MoodyShopTab(),
    const MoodyAccountTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            Image.asset(AppAssets.moodyLogo),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Moody",
              style: TextStyle(
                fontSize: 24,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Badge(
                smallSize: 10,
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: AppColors.black,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
      body: body[currentIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      onTap: (index) {
        currentIndex = index;
        setState(() {});
      },
      currentIndex: currentIndex,
      selectedItemColor: AppColors.green,
      unselectedItemColor: AppColors.move,
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.home_filled,
              ),
            ],
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.grid_view_outlined,
              ),
            ],
          ),
          label: "menu",
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.calendar_today_outlined,
              ),
            ],
          ),
          label: "shop",
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.person_2_outlined,
              ),
            ],
          ),
          label: "account",
        ),
      ],
    );
  }
}
