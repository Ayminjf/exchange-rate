import 'package:flutter/material.dart';
import 'package:exchange_rate/screens/coin_screen.dart';
import 'package:exchange_rate/screens/gold_screen.dart';
import 'package:exchange_rate/screens/crypto_screen.dart';
import 'package:exchange_rate/screens/currency_screen.dart';

class Constants {
  static Color blackColor = const Color(0xFF282828);
  static Color whiteColor = const Color(0xFFF0F0F0);

  List<Widget> screens = const [
    CurrencyScreen(),
    CoinScreen(),
    GoldScreen(),
    CryptoScreen(),
  ];

  List<Widget> iconNavigationBar = [
    SizedBox(
      height: 40,
      width: 40,
      child: Image.asset("assets/images/currencys.png"),
    ),
    SizedBox(
      height: 40,
      width: 40,
      child: Image.asset("assets/images/coins.png"),
    ),
    SizedBox(
      height: 40,
      width: 40,
      child: Image.asset("assets/images/golds.png"),
    ),
    SizedBox(
      height: 40,
      width: 40,
      child: Image.asset("assets/images/cryptos.png"),
    ),
  ];

  List<String> appBarTitle = const [
    "نرخ ارز کشور ها",
    "نرخ سکه",
    "نرخ طلا",
    "نرخ ارزدیجیتال",
  ];
}
