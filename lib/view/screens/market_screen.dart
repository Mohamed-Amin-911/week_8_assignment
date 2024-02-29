import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';
import 'package:week_8_assignment/gen/assets.gen.dart';
import 'package:week_8_assignment/model/coins_class.dart';
import 'package:week_8_assignment/controller/provider/coins_provider.dart';
import 'package:week_8_assignment/view/widgets/trending_coins_widget.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Coins> coins = Provider.of<CoinsProvider>(context).getCoins;
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Market is down",
                        style: appStyle(fw: FontWeight.w500, size: 20)
                            .copyWith(color: Pallete.textColor),
                      ),
                      Text(
                        " -8.21%",
                        style: appStyle(fw: FontWeight.w500, size: 20)
                            .copyWith(color: Pallete.text2Color),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(Assets.icons.search)
                ],
              ),
              SizedBox(height: 5 * Sizeconfig.verticalBlock),
              Text(
                "In the past 24 hours",
                style: appStyle(fw: FontWeight.w400, size: 12)
                    .copyWith(color: Pallete.bottomIconColor),
              ),
              SizedBox(height: 31 * Sizeconfig.verticalBlock),
              Row(
                children: [
                  Text(
                    "Coins",
                    style: appStyle(fw: FontWeight.w500, size: 18)
                        .copyWith(color: Pallete.textColor),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "MArket-USD",
                        style: appStyle(fw: FontWeight.w400, size: 12)
                            .copyWith(color: Pallete.bottomIconColor),
                      ),
                      const Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Pallete.bottomIconColor,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 32 * Sizeconfig.verticalBlock),
              TabBar(
                tabAlignment: TabAlignment.start,
                labelPadding: const EdgeInsets.only(right: 45),
                indicatorWeight: 3,
                labelStyle: appStyle(fw: FontWeight.w500, size: 14)
                    .copyWith(color: Pallete.mainColor),
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Pallete.mainColor,
                labelColor: Pallete.mainColor,
                unselectedLabelColor: Pallete.bottomIconColor,
                tabs: const <Widget>[
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Gainer",
                  ),
                  Tab(
                    text: "Loser",
                  ),
                  Tab(
                    text: "Favourites",
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(218, 125, 117, 108),
                height: 1,
              ),
              SizedBox(height: 24 * Sizeconfig.verticalBlock),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: coins.length,
                        itemBuilder: (context, index) {
                          return TrendingCoinsWidget(
                              text1: coins[index].text1,
                              text2: coins[index].text2,
                              text3: coins[index].text3,
                              text4: coins[index].text4,
                              image1: coins[index].image1,
                              image2: coins[index].image2,
                              text2Color: coins[index].text2Color);
                        }),
                    ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: coins.length,
                        itemBuilder: (context, index) {
                          return TrendingCoinsWidget(
                              text1: coins[index].text1,
                              text2: coins[index].text2,
                              text3: coins[index].text3,
                              text4: coins[index].text4,
                              image1: coins[index].image1,
                              image2: coins[index].image2,
                              text2Color: coins[index].text2Color);
                        }),
                    ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: coins.length,
                        itemBuilder: (context, index) {
                          return TrendingCoinsWidget(
                              text1: coins[index].text1,
                              text2: coins[index].text2,
                              text3: coins[index].text3,
                              text4: coins[index].text4,
                              image1: coins[index].image1,
                              image2: coins[index].image2,
                              text2Color: coins[index].text2Color);
                        }),
                    ListView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: coins.length,
                        itemBuilder: (context, index) {
                          return TrendingCoinsWidget(
                              text1: coins[index].text1,
                              text2: coins[index].text2,
                              text3: coins[index].text3,
                              text4: coins[index].text4,
                              image1: coins[index].image1,
                              image2: coins[index].image2,
                              text2Color: coins[index].text2Color);
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
