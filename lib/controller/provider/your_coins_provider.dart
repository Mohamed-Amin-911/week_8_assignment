import 'package:flutter/material.dart';
import 'package:week_8_assignment/constants/chart_assets.dart';
import 'package:week_8_assignment/constants/image_assets.dart';
import 'package:week_8_assignment/model/your_coins_class.dart';

final List<YourCoins> yourCoins = [
  YourCoins(
    image1: ImageAsset.ethereum2,
    image2: ChartAsset.ethereum,
    text1: "Ethereum",
    text2: "0.0042069 ETH",
    text3: "\$3,397.73",
    text4: "-11.00%",
    text2Color: const Color(0xffD90429),
  ),
  YourCoins(
    image1: ImageAsset.theter,
    image2: ChartAsset.theter,
    text1: "Theter",
    text2: "108.15 USDT",
    text3: "\$108.15",
    text4: "+0.06%",
    text2Color: const Color(0xff21BF73),
  ),
  YourCoins(
    image1: ImageAsset.dogecoin,
    image2: ChartAsset.doge,
    text1: "Dogecoin",
    text2: "1015.92 DOGE",
    text3: "\$699.34",
    text4: "+10.01%",
    text2Color: const Color(0xff21BF73),
  ),
  YourCoins(
    image1: ImageAsset.stellar,
    image2: ChartAsset.stellar,
    text1: "Stellar",
    text2: "513.60 XLM",
    text3: "\$153.90",
    text4: "-5.65%",
    text2Color: const Color(0xffD90429),
  ),
];

class YourCoinsProvider extends ChangeNotifier {
  List<YourCoins> get getYourCoins => yourCoins;
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
