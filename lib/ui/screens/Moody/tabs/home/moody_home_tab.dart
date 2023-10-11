import 'package:flutter/material.dart';
import 'package:quiz/ui/screens/Moody/tabs/home/feature.dart';
import 'package:quiz/ulits/app_assets.dart';
import 'package:quiz/ulits/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyHomeTab extends StatefulWidget {
  const MoodyHomeTab({super.key});

  @override
  State<MoodyHomeTab> createState() => _MoodyHomeTabState();
}

class _MoodyHomeTabState extends State<MoodyHomeTab> {
  List<Widget> features = [const Feature(), const Feature(), const Feature()];
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                "Hello, ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColors.dark_move,
                ),
              ),
              Text(
                "Sara Rose",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.dark_move,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "How are you feeling today ?",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: AppColors.dark_move),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(AppAssets.love_frame),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Love",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(AppAssets.cool_frame),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Cool",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(AppAssets.happy_frame),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Happy",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(AppAssets.sad_frame),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Sad",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Feature",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                "See more >",
                style: TextStyle(
                  color: AppColors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              children: features,
            ),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: SlideEffect(
                activeDotColor: AppColors.light_blue,
                dotColor: AppColors.offWhite,
                dotHeight: 6,
                dotWidth: 6,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Exercise",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                "See more >",
                style: TextStyle(
                  color: AppColors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.purpul,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Image.asset(AppAssets.relaxation),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Relaxation",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.pink,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Image.asset(AppAssets.meditation),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Meditation",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Image.asset(AppAssets.beathing),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Beathing",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.SoLight_blue,
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Image.asset(AppAssets.yoga),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Yoga",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
