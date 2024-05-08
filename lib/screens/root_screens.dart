import 'package:exchange_rate/constants/constants.dart';
import 'package:exchange_rate/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:exchange_rate/screens/home_screen.dart';
import 'package:exchange_rate/screens/coin_screen.dart';
import 'package:exchange_rate/screens/gold_screen.dart';
import 'package:exchange_rate/screens/crypto_screen.dart';
import 'package:exchange_rate/screens/currency_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({
    super.key,
  });

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int bottomIndex = 0;
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 2);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/money-exchange.png"),
                ),
                const SizedBox(width: 10),
                Text(
                  Constants.appBarTitle[_controller.index],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: const [
          CurrencyScreen(),
          CoinScreen(),
          HomeScreen(),
          GoldScreen(),
          CryptoScreen(),
        ],
        items: _navBarsItems(),
        onItemSelected: (value) {
          setState(() {
            _controller.index = value;
          });
        },
        navBarHeight: size * 0.08,
        confineInSafeArea: true,
        backgroundColor: Constants.blackColor,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 100),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 100),
        ),
        navBarStyle: NavBarStyle.style6,
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          colorBehindNavBar: Colors.white,
        ),
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(icon: Constants.iconNavigationBar[0]),
      PersistentBottomNavBarItem(icon: Constants.iconNavigationBar[1]),
      PersistentBottomNavBarItem(
        icon: Icon(
          _controller.index == 2 ? Icons.home : Icons.home_outlined,
          size: 38,
          color: Colors.white,
        ),
        activeColorPrimary: const Color(0xFF949494),
        // inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(icon: Constants.iconNavigationBar[2]),
      PersistentBottomNavBarItem(icon: Constants.iconNavigationBar[3]),
    ];
  }
}
