import 'package:flutter/material.dart';
import 'package:quiz/ulits/app_assets.dart';
import 'package:quiz/ulits/app_colors.dart';

class Programs extends StatelessWidget {
  const Programs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => buildProgramItem(context, index),
    );
  }

  Widget buildProgramItem(BuildContext context, int index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10),
        decoration: BoxDecoration(
            color: AppColors.l_grey, borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: AppColors.white,
                  ),
                  child: Text(
                    index % 2 == 0 ? "7 days" : "3 days",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  index % 2 == 0 ? "Morning Yoga" : "Plank Exercise",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  index % 2 == 0
                      ? "improve mental focus."
                      : "improve posture and stability",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.alarm_outlined,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "30 mins",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            index % 2 == 0
                ? Image.asset(AppAssets.yoga1)
                : Image.asset(AppAssets.yoga2),
          ],
        ),
      ),
    );
  }
}
