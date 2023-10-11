import 'package:flutter/material.dart';
import 'package:quiz/ui/screens/Moody/moody_screen.dart';
import 'package:quiz/ui/screens/news/tabs/chat/news_chat_tab.dart';
import 'package:quiz/ui/screens/news/tabs/insights/news_insights_tab.dart';
import 'package:quiz/ui/screens/news/tabs/today/news_today_tab.dart';
import 'package:quiz/ui/screens/workout/workout_screen.dart';
import 'package:quiz/ulits/app_assets.dart';
import 'package:quiz/ulits/app_colors.dart';

class NewsScreen extends StatefulWidget {
  static String routeName = "newsScreen";

  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int currentIndex = 1;

  List<Widget> body = [
    const NewsTodayTab(),
    const NewsInsightsTab(),
    const NewsChatTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.flower),
            const SizedBox(
              width: 4,
            ),
            Text(
              "AliceCare",
              style: TextStyle(
                fontSize: 24,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
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
              onPressed: (){
                Navigator.pushReplacementNamed(context, WorkoutScreen.routeName);
              },
              child: const Text("workout"),
            ),
            ElevatedButton(
              onPressed: (){},
              child: const Text("news"),
            ),
          ],
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
      selectedItemColor: AppColors.purple,
      unselectedItemColor: AppColors.dark_purple,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.calendar_today_outlined,
              ),
            ],
          ),
          label: "Today",
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.grid_view_outlined,
              ),
            ],
          ),
          label: "insights",
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(
                Icons.chat_bubble_outline,
              ),
            ],
          ),
          label: "Chat",
        ),
      ],
    );
  }
}
