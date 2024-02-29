import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:week_8_assignment/constants/colors.dart';
import 'package:week_8_assignment/constants/size_config.dart';
import 'package:week_8_assignment/constants/text.dart';
import 'package:week_8_assignment/gen/assets.gen.dart';
import 'package:week_8_assignment/view/screens/home_screen.dart';
import 'package:week_8_assignment/view/screens/market_screen.dart';
import 'package:week_8_assignment/view/screens/portfolio_screen.dart';
import 'package:week_8_assignment/view/screens/profile_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  dynamic selected;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromARGB(157, 0, 0, 0),
            blurRadius: 55, blurStyle: BlurStyle.solid,
            offset: Offset(10, 36), // Shadow position
          ),
        ]),
        child: StylishBottomBar(
          option: AnimatedBarOptions(
            barAnimation: BarAnimation.blink,
            iconStyle: IconStyle.Default,
          ),
          items: [
            BottomBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.home.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.bottomIconColor, BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.icons.home.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.mainColor, BlendMode.srcIn),
                ),
                title: Text(
                  'Home',
                  style: appStyle(fw: FontWeight.w700, size: 10),
                ),
                selectedColor: Pallete.mainColor,
                unSelectedColor: Pallete.bottomIconColor),
            BottomBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.portfolio.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.bottomIconColor, BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.icons.portfolio.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.mainColor, BlendMode.srcIn),
                ),
                title: Text(
                  'Portfolio',
                  style: appStyle(fw: FontWeight.w700, size: 10),
                ),
                selectedColor: Pallete.mainColor,
                unSelectedColor: Pallete.bottomIconColor),
            BottomBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.market.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.bottomIconColor, BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.icons.market.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.mainColor, BlendMode.srcIn),
                ),
                title: Text(
                  'Market',
                  style: appStyle(fw: FontWeight.w700, size: 10),
                ),
                selectedColor: Pallete.mainColor,
                unSelectedColor: Pallete.bottomIconColor),
            BottomBarItem(
                icon: SvgPicture.asset(
                  Assets.icons.profile.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.bottomIconColor, BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.icons.profile.toString(),
                  colorFilter: const ColorFilter.mode(
                      Pallete.mainColor, BlendMode.srcIn),
                ),
                title: Text(
                  'Profile',
                  style: appStyle(fw: FontWeight.w700, size: 10),
                ),
                selectedColor: Pallete.mainColor,
                unSelectedColor: Pallete.bottomIconColor),
          ],
          hasNotch: true,
          fabLocation: StylishBarFabLocation.center,
          currentIndex: selected ?? 0,
          onTap: (index) {
            controller.jumpToPage(index);
            setState(() {
              selected = index;
            });
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        backgroundColor: Pallete.mainColor,
        child: SvgPicture.asset(
          selected == 1 ? Assets.icons.add : Assets.icons.trade.toString(),
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: const [
            Center(child: HomeScreen()),
            Center(child: PortfolioScreen()),
            Center(child: MarketScreen()),
            Center(child: ProfileScreen()),
          ],
        ),
      ),
    );
  }
}
