import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';
import 'package:week_8_assignment/model/portfolio_class.dart';
import 'package:week_8_assignment/model/your_coins_class.dart';
import 'package:week_8_assignment/controller/provider/portfolio_provider.dart';
import 'package:week_8_assignment/controller/provider/your_coins_provider.dart';
import 'package:week_8_assignment/view/widgets/portfolio_widget.dart';
import 'package:week_8_assignment/view/widgets/your_coins_widget.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<YourCoins> yourCoins =
        Provider.of<YourCoinsProvider>(context).getYourCoins;
    final List<Portfolio> portfolios =
        Provider.of<PortfolioProvider>(context).getPortfolios;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PortfolioWidget(
              holding: portfolios.elementAt(0).holding,
              available: portfolios.elementAt(0).available,
              invested: portfolios.elementAt(0).invested,
            ),
            SizedBox(height: 18 * Sizeconfig.verticalBlock),
            Row(
              children: [
                SizedBox(
                  width: 147 * Sizeconfig.horizontalBlock,
                  height: 48 * Sizeconfig.verticalBlock,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Pallete.mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        "Deposit USD",
                        style: appStyle(fw: FontWeight.w500, size: 14)
                            .copyWith(color: Colors.white),
                      )),
                ),
                const Spacer(),
                SizedBox(
                  width: 147 * Sizeconfig.horizontalBlock,
                  height: 48 * Sizeconfig.verticalBlock,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Pallete.mainColor, width: 1),
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        "Withdraw USD",
                        style: appStyle(fw: FontWeight.w500, size: 14)
                            .copyWith(color: Pallete.mainColor),
                      )),
                ),
              ],
            ),
            SizedBox(height: 41 * Sizeconfig.verticalBlock),
            Text(
              "Your coins",
              style: appStyle(fw: FontWeight.w700, size: 20)
                  .copyWith(color: Pallete.textColor),
            ),
            SizedBox(height: 14 * Sizeconfig.verticalBlock),
            SizedBox(
              height: 300 * Sizeconfig.verticalBlock,
              child: ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: yourCoins.length,
                itemBuilder: (context, index) {
                  return YourCoinsWidget(
                      text1: yourCoins[index].text1,
                      text2: yourCoins[index].text2,
                      text3: yourCoins[index].text3,
                      text4: yourCoins[index].text4,
                      image1: yourCoins[index].image1,
                      image2: yourCoins[index].image2,
                      text2Color: yourCoins[index].text2Color);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
