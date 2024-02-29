import 'package:flutter/material.dart';
import 'package:week_8_assignment/constants/chart_assets.dart';
import 'package:week_8_assignment/constants/image_assets.dart';
import 'package:week_8_assignment/model/trending_coins_class.dart';

final List<TrendingCoins> trendingCoins = [
  TrendingCoins(
    image1: ImageAsset.bitcoin2,
    image2: ChartAsset.btc,
    text1: "Bitcoin",
    text2: "BTC",
    text3: "\$49,487.00",
    text4: "+3.47%",
    text2Color: const Color(0xff21BF73),
  ),
  TrendingCoins(
    image1: ImageAsset.ethereum2,
    image2: ChartAsset.ethereum,
    text1: "Ethereum",
    text2: "Eth",
    text3: "\$3,397.73",
    text4: "-11.00%",
    text2Color: const Color(0xffD90429),
  ),
  TrendingCoins(
    image1: ImageAsset.theter,
    image2: ChartAsset.theter,
    text1: "Theter",
    text2: "USDT",
    text3: "\$1.0",
    text4: "+0.06%",
    text2Color: const Color(0xff21BF73),
  ),
  TrendingCoins(
    image1: ImageAsset.dogecoin,
    image2: ChartAsset.doge,
    text1: "Dogecoin",
    text2: "DOGE",
    text3: "\$0.2380",
    text4: "+10.01%",
    text2Color: const Color(0xff21BF73),
  ),
  TrendingCoins(
    image1: ImageAsset.stellar,
    image2: ChartAsset.stellar,
    text1: "Stellar",
    text2: "XLM",
    text3: "\$0.3203",
    text4: "+10.01%",
    text2Color: const Color(0xffD90429),
  ),
  TrendingCoins(
    image1: ImageAsset.binance,
    image2: ChartAsset.binance,
    text1: "Binance Coin",
    text2: "DOGE",
    text3: "\$434.95",
    text4: "-5.65%",
    text2Color: const Color(0xffD90429),
  ),
  TrendingCoins(
    image1: ImageAsset.bitcoin2,
    image2: ChartAsset.btc,
    text1: "Bitcoin",
    text2: "BTC",
    text3: "\$49,487.00",
    text4: "+3.47%",
    text2Color: const Color(0xff21BF73),
  ),
  TrendingCoins(
    image1: ImageAsset.bitcoin2,
    image2: ChartAsset.btc,
    text1: "Bitcoin",
    text2: "BTC",
    text3: "\$49,487.00",
    text4: "+3.47%",
    text2Color: const Color(0xff21BF73),
  ),
];

class TrendingCoinsProvider extends ChangeNotifier {
  List<TrendingCoins> get getTrendingCoins => trendingCoins;
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
