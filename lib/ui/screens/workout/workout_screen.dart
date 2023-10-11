import 'package:flutter/material.dart';
import 'package:quiz/ui/screens/Moody/moody_screen.dart';
import 'package:quiz/ui/screens/news/news_screen.dart';
import 'package:quiz/ui/screens/workout/tabs/account/workout_account_tab.dart';
import 'package:quiz/ui/screens/workout/tabs/char/workout_char_tab.dart';
import 'package:quiz/ui/screens/workout/tabs/home/workout_home_tab.dart';
import 'package:quiz/ui/screens/workout/tabs/share/workout_share_tab.dart';
import 'package:quiz/ulits/app_assets.dart';
import 'package:quiz/ulits/app_colors.dart';

class WorkoutScreen extends StatefulWidget {
  static String routeName = "workoutScreen";

  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  int currentIndex = 0;

  List<Widget> body = [
    const WorkoutHomeTab(),
    const WorkoutShareTab(),
    const WorkoutCharTab(),
    const WorkoutAccountTab()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              CircleAvatar(
                child: Image.asset(AppAssets.profile),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Jade",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "Ready to workout",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
        drawer: Container(
          color: Colors.lightGreen,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: ()
                {
                  Navigator.pushReplacementNamed(context, MoodyScreen.routeName);
                },
                child: const Text("moody"),
              ),
              ElevatedButton(
                onPressed: (){},
                child: const Text("workout"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, NewsScreen.routeName);
                },
                child: const Text("news"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildBottomNavBar() {
    return BottomNavigationBar(
      onTap: (index) {
        currentIndex = index;
        setState(() {});
      },
      currentIndex: currentIndex,
      selectedItemColor: AppColors.dark_blue,
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
                Icons.navigation_outlined,
              ),
            ],
          ),
          label: "share",
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.bar_chart_outlined,
              ),
            ],
          ),
          label: "char",
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
