/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsChartsGen {
  const $AssetsChartsGen();

  /// File path: assets/charts/binance_chart.png
  AssetGenImage get binanceChart =>
      const AssetGenImage('assets/charts/binance_chart.png');

  /// File path: assets/charts/btc_chart.png
  AssetGenImage get btcChart =>
      const AssetGenImage('assets/charts/btc_chart.png');

  /// File path: assets/charts/doge_chart.png
  AssetGenImage get dogeChart =>
      const AssetGenImage('assets/charts/doge_chart.png');

  /// File path: assets/charts/ethereum_chart.png
  AssetGenImage get ethereumChart =>
      const AssetGenImage('assets/charts/ethereum_chart.png');

  /// File path: assets/charts/stellar_chart.png
  AssetGenImage get stellarChart =>
      const AssetGenImage('assets/charts/stellar_chart.png');

  /// File path: assets/charts/theter_chart.png
  AssetGenImage get theterChart =>
      const AssetGenImage('assets/charts/theter_chart.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        binanceChart,
        btcChart,
        dogeChart,
        ethereumChart,
        stellarChart,
        theterChart
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.svg
  String get add => 'assets/icons/add.svg';

  /// File path: assets/icons/bank.svg
  String get bank => 'assets/icons/bank.svg';

  /// File path: assets/icons/help.svg
  String get help => 'assets/icons/help.svg';

  /// File path: assets/icons/history.svg
  String get history => 'assets/icons/history.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/logout.svg
  String get logout => 'assets/icons/logout.svg';

  /// File path: assets/icons/market.svg
  String get market => 'assets/icons/market.svg';

  /// File path: assets/icons/notification.svg
  String get notification => 'assets/icons/notification.svg';

  /// File path: assets/icons/portfolio.svg
  String get portfolio => 'assets/icons/portfolio.svg';

  /// File path: assets/icons/profile.svg
  String get profile => 'assets/icons/profile.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// File path: assets/icons/security.svg
  String get security => 'assets/icons/security.svg';

  /// File path: assets/icons/terms.svg
  String get terms => 'assets/icons/terms.svg';

  /// File path: assets/icons/trade.svg
  String get trade => 'assets/icons/trade.svg';

  /// List of all assets
  List<String> get values => [
        add,
        bank,
        help,
        history,
        home,
        logout,
        market,
        notification,
        portfolio,
        profile,
        search,
        security,
        terms,
        trade
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/binance.png
  AssetGenImage get binance => const AssetGenImage('assets/images/binance.png');

  /// File path: assets/images/bitcoin1.png
  AssetGenImage get bitcoin1 =>
      const AssetGenImage('assets/images/bitcoin1.png');

  /// File path: assets/images/bitcoin2.png
  AssetGenImage get bitcoin2 =>
      const AssetGenImage('assets/images/bitcoin2.png');

  /// File path: assets/images/dogecoin.png
  AssetGenImage get dogecoin =>
      const AssetGenImage('assets/images/dogecoin.png');

  /// File path: assets/images/ethereum1.png
  AssetGenImage get ethereum1 =>
      const AssetGenImage('assets/images/ethereum1.png');

  /// File path: assets/images/ethereum2.png
  AssetGenImage get ethereum2 =>
      const AssetGenImage('assets/images/ethereum2.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/stellar.png
  AssetGenImage get stellar => const AssetGenImage('assets/images/stellar.png');

  /// File path: assets/images/theter.png
  AssetGenImage get theter => const AssetGenImage('assets/images/theter.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        binance,
        bitcoin1,
        bitcoin2,
        dogecoin,
        ethereum1,
        ethereum2,
        logo,
        stellar,
        theter
      ];
}

class Assets {
  Assets._();

  static const $AssetsChartsGen charts = $AssetsChartsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
