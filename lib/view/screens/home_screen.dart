import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';
import 'package:week_8_assignment/model/trending_coins_class.dart';
import 'package:week_8_assignment/controller/provider/trending_coins_provider.dart';
import 'package:week_8_assignment/view/widgets/home_widget_1.dart';
import 'package:week_8_assignment/view/widgets/trending_coins_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<TrendingCoins> trendingCoins =
        Provider.of<TrendingCoinsProvider>(context).getTrendingCoins;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeWidget(),
            SizedBox(height: 30 * Sizeconfig.verticalBlock),
            Text(
              "Trending Coins",
              style: appStyle(fw: FontWeight.w700, size: 20),
            ),
            SizedBox(height: 18 * Sizeconfig.verticalBlock),
            SizedBox(
              height: 460,
              child: ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: trendingCoins.length,
                itemBuilder: (context, index) {
                  return TrendingCoinsWidget(
                      text1: trendingCoins[index].text1,
                      text2: trendingCoins[index].text2,
                      text3: trendingCoins[index].text3,
                      text4: trendingCoins[index].text4,
                      image1: trendingCoins[index].image1,
                      image2: trendingCoins[index].image2,
                      text2Color: trendingCoins[index].text2Color);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
