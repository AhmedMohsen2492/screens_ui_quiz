import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/ui/my%20provider/my_provider.dart';
import 'package:quiz/ulits/app_assets.dart';
import 'package:quiz/ulits/app_colors.dart';

class NewsInsightsTab extends StatefulWidget {
  const NewsInsightsTab({super.key});

  @override
  State<NewsInsightsTab> createState() => _NewsInsightsTabState();
}

class _NewsInsightsTabState extends State<NewsInsightsTab> {
  late MyProvider provider ;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: AppColors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Articles, Video, Audio and More,...",
                prefixIcon: const Icon(Icons.search_outlined),
                contentPadding: const EdgeInsets.all(0),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: FilterChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500),
                          side: BorderSide(
                            color: !provider.discoverSelected
                                ? AppColors.greey
                                : AppColors.d_purple,
                            width: 2,
                          ),
                        ),
                        backgroundColor: AppColors.white,
                        showCheckmark: false,
                        selectedColor: AppColors.l_purple,
                        selected: provider.discoverSelected,
                        label: Text(
                          "Discover",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: !provider.discoverSelected
                                  ? AppColors.dark_purple
                                  : AppColors.purple),
                        ),
                        onSelected: (value) {
                          provider.changeDiscoverSelectedValue(value);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: FilterChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500),
                          side: BorderSide(
                            color: !provider.newsSelected
                                ? AppColors.greey
                                : AppColors.d_purple,
                            width: 2,
                          ),
                        ),
                        backgroundColor: AppColors.white,
                        showCheckmark: false,
                        selectedColor: AppColors.l_purple,
                        selected: provider.newsSelected,
                        label: Text(
                          "News",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: !provider.newsSelected
                                  ? AppColors.dark_purple
                                  : AppColors.purple),
                        ),
                        onSelected: (value) {
                          provider.changeNewsSelectedValue(value);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: FilterChip(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500),
                          side: BorderSide(
                            color: !provider.mostViewedSelected
                                ? AppColors.greey
                                : AppColors.d_purple,
                            width: 2,
                          ),
                        ),
                        backgroundColor: AppColors.white,
                        showCheckmark: false,
                        selectedColor: AppColors.l_purple,
                        selected: provider.mostViewedSelected,
                        label: Text(
                          "Most Viewed",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: !provider.mostViewedSelected
                                  ? AppColors.dark_purple
                                  : AppColors.purple),
                        ),
                        onSelected: (value) {
                          provider.changeMostViewedSelectedValue(value);
                        }),
                  ),
                  FilterChip(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                        side: BorderSide(
                          color: !provider.savedSelected
                              ? AppColors.greey
                              : AppColors.d_purple,
                          width: 2,
                        ),
                      ),
                      backgroundColor: AppColors.white,
                      showCheckmark: false,
                      selectedColor: AppColors.l_purple,
                      selected: provider.savedSelected,
                      label: Text(
                        "Saved",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: !provider.savedSelected
                                ? AppColors.dark_purple
                                : AppColors.purple),
                      ),
                      onSelected: (value) {
                        provider.changeSavedSelectedValue(value);
                      }),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  "Hot topics",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Text(
                  "See all >",
                  style: TextStyle(
                    color: AppColors.sodark_purple,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.19,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) => buildTopics(index),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Get Tips",
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.basic_grey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Image.asset(AppAssets.doctor),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect with doctors & ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          "Get suggestions",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Connect now and get ",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.black),
                        ),
                        Text(
                          "expert insights",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.d_blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "View detail",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Text(
                  "Cycle Phases and Period",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Text(
                  "See all >",
                  style: TextStyle(
                    color: AppColors.sodark_purple,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTopics(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            index % 2 == 0 ? AppAssets.topic1 : AppAssets.topic2,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color:
                        index % 2 == 0 ? AppColors.l_orange : AppColors.l_pink,
                  ),
                  child: Text(
                    index % 2 == 0 ? "SELF-Care" : "CYCLE",
                    style: TextStyle(
                        color: AppColors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  index % 2 == 0
                      ? "10 Easy Self-Care ideas That Can"
                      : "How to take care of Menstrual",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  index % 2 == 0
                      ? "Help Boost Your Health"
                      : "Hygiene during Menstrual Cycle",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
