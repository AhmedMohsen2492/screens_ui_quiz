import 'package:flutter/material.dart';
import 'package:quiz/ui/screens/workout/tabs/home/programs.dart';
import 'package:quiz/ulits/app_assets.dart';
import 'package:quiz/ulits/app_colors.dart';

class WorkoutHomeTab extends StatefulWidget {
  const WorkoutHomeTab({super.key});

  @override
  State<WorkoutHomeTab> createState() => _WorkoutHomeTabState();
}

class _WorkoutHomeTabState extends State<WorkoutHomeTab> {
  List<Widget> programs = [
    const Text(
      "All Type",
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    const Text(
      "Full Body",
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    const Text(
      "Upper",
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    const Text(
      "Lower",
      style: TextStyle(
        fontSize: 16,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.l_grey),
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppAssets.heart),
                        const Text(
                          "Heart Rate",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          "81 ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "BPM",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 3,
                  color: AppColors.divider,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppAssets.todo),
                        const Text(
                          "To-do",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          "32,5 ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "%",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 3,
                  color: AppColors.divider,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(AppAssets.fire),
                        const Text(
                          "Calo",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          "1000 ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Cal",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Workout Programs",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          TabBar(
            labelPadding: const EdgeInsets.all(10),
            tabs: programs,
            unselectedLabelColor: AppColors.move,
            indicatorColor: AppColors.dark_blue,
            labelColor: AppColors.dark_blue,
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
            child: TabBarView(children: [
              Programs(),
              Programs(),
              Programs(),
              Programs(),
            ]),
          ),
        ],
      ),
    );
  }
}
