import 'package:flutter/material.dart';
import 'package:exchange_rate/screens/home_screen.dart';
import 'package:exchange_rate/screens/coin_screen.dart';
import 'package:exchange_rate/screens/gold_screen.dart';
import 'package:exchange_rate/screens/crypto_screen.dart';
import 'package:exchange_rate/screens/currency_screen.dart';

class Constants {
  static Color blackColor = const Color(0xFF282828);
  static Color whiteColor = const Color(0xFFF0F0F0);

  static List<Widget> screens = const [
    CurrencyScreen(),
    CoinScreen(),
    HomeScreen(),
    GoldScreen(),
    CryptoScreen(),
  ];

  static List<String> appBarTitle = const [
    "نرخ ارز کشور ها",
    "نرخ سکه",
    "خانه",
    "نرخ طلا",
    "نرخ ارزدیجیتال",
  ];

  static List<Widget> iconNavigationBar = const [
    CustomTabBar(image: "currencys"),
    CustomTabBar(image: "coins"),
    CustomTabBar(image: "golds"),
    CustomTabBar(image: "cryptos"),
  ];
}

class CustomTabBar extends StatelessWidget {
  final String image;
  const CustomTabBar({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: Image.asset("assets/images/$image.png"),
    );
  }
}
