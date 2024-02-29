import 'package:flutter/material.dart';
import 'package:week_8_assignment/model/portfolio_class.dart';

final List<Portfolio> portfolios = [
  Portfolio(
    holding: "\$2,420.69",
    invested: "\$1,328.00",
    available: "\$1268",
  ),
];

class PortfolioProvider extends ChangeNotifier {
  List<Portfolio> get getPortfolios => portfolios;
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
