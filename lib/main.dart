import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/controller/provider/coins_provider.dart';
import 'package:week_8_assignment/controller/provider/portfolio_provider.dart';
import 'package:week_8_assignment/controller/provider/trending_coins_provider.dart';
import 'package:week_8_assignment/controller/provider/user_provider.dart';
import 'package:week_8_assignment/controller/provider/your_coins_provider.dart';
import 'package:week_8_assignment/view/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TrendingCoinsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => YourCoinsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PortfolioProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CoinsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Pallete.mainColor),
            useMaterial3: false),
        home: const TabsScreen(),
      ),
    );
  }
}
