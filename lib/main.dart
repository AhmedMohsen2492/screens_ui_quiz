import 'package:flutter/material.dart';
import 'package:quiz/ui/my%20provider/my_provider.dart';
import 'package:quiz/ui/screens/Moody/moody_screen.dart';
import 'package:quiz/ui/screens/news/news_screen.dart';
import 'package:quiz/ui/screens/workout/workout_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (_)=>MyProvider(),
          child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MoodyScreen.routeName,
      routes: {
        MoodyScreen.routeName : (_) => const MoodyScreen(),
        WorkoutScreen.routeName : (_) => const WorkoutScreen(),
        NewsScreen.routeName : (_) => const NewsScreen(),
      },
    );
  }
}