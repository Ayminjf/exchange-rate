import 'package:exchange_rate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

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
        screens: Constants.screens,
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
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 100),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: 100),
        ),
        navBarStyle: NavBarStyle.style6,
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
