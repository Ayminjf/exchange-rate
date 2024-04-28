import 'package:exchange_rate/provider/provider.dart';
import 'package:flutter/material.dart';

class Constants {
  static Color blackColor = const Color(0xFF282828);
  static Color whiteColor = const Color(0xFFF0F0F0);
  static Color greyColor = const Color(0xFFE6E6E6);
  static Color highChangeColor = const Color(0xFFA1FD64);
  static Color lowChangeColor = const Color(0xFFFD8F64);

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

  static List<String> flagCurrency = [
    "usd",
    "eur",
    "gbp",
    "jpy",
    "aud",
    "cad",
    "chf",
    "nzd",
    "cny",
    "myr",
    "nok",
    "try",
    "pkr",
    "sgd",
    "afn",
    "tjs",
    "inr",
    "rub",
    "brl",
    "azn",
    "sek",
    "dkk",
    "kwd",
    "aed",
    "omr",
    "thb",
    "gel",
  ];

  static List<String> nameCurrency = [
    "دلار آمریکا",
    "یورو",
    "پوند استرلینگ",
    "ین ژاپن",
    "دلار استرالیا",
    "دلار کانادا",
    "فرانک سوئیس",
    "دلار نیوزیلند",
    "یوان چین",
    "رینگیت مالزی",
    "کرون نروژ",
    "لیره ترکیه",
    "روپیه پاکستان",
    "دلار سنگاپور",
    "افغانی",
    "سامانی",
    "روپیه هند",
    "روبل روسیه",
    "رئال برزیل",
    "منات آذربایجان",
    "کرون سوئد",
    "کرون دانمارک",
    "دینار کویت",
    "درهم امارات",
    "ریال عمان",
    "بات تایلند",
    "لاری گرجستان",
  ];

  static List<String> nameCoin = [
    "سکه امامی",
    "سکه بهار آزادی",
    "نیم سکه",
    "ربع سکه",
    "سکه گرمی",
  ];

  static List<String> nameGold = [
    "گرم طلا 18",
    "گرم طلا 24",
    "مثقال طلا",
  ];

  static List<String> cryptoSymbol = [
    "btc",
    "eth",
    "usdt",
    "bnb",
    "sol",
    "xrp",
    "usdc",
    "ada",
    "avax",
    "doge",
    "shib",
    "ton",
    "dot",
    "trx",
    "wbtc",
    "link",
    "bch",
    "near",
    "uni",
    "ltc",
    "leo",
    "apt",
    "atom",
    "tao",
    "rndr",
    "etc",
    "stx",
    "fil",
    "imx",
    "grt",
    "xlm",
    "okb",
  ];

  static List<String> sekke = [
    "sekee",
    "sekeb",
    "nim",
    "rob",
    "gerami",
  ];

  static List<String> tala = [
    "geram18",
    "geram24",
    "mesghal",
  ];

  static String rialaToToman(String price) =>
      price.substring(0, price.length - 1);

  static String priceFormat(String input) {
    input = rialaToToman(input);
    String reversed = input.split('').reversed.join('');

    String result = '';
    for (int i = 0; i < reversed.length; i++) {
      result += reversed[i];
      if ((i + 1) % 3 == 0 && i != reversed.length - 1) {
        result += ',';
      }
    }

    return result.split('').reversed.join('');
  }

  static String removeCommas(String input) {
    return input.replaceAll(',', '');
  }

  static String priceListFormat(price) {
    String p = removeCommas(price);
    p = priceFormat(p);
    return p.persianNumber;
  }
}

extension PersianNumberExtension on String {
  String get persianNumber {
    const english = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
    const persian = ["۰", "۱", "۲", "۳", "۴", "۵", "۶", "۷", "۸", "۹"];
    String text = this;
    for (var i = 0; i < english.length; i++) {
      text = text.replaceAll(english[i], persian[i]);
    }
    return text;
  }
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

class PriceContainer extends StatelessWidget {
  final DataPriceListAndCrypto dplc;
  final int index;
  final String price;

  const PriceContainer({
    super.key,
    required this.dplc,
    required this.index,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Constants.greyColor,
        border: Border.all(
          color: Constants.blackColor,
          width: 2,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Text(
              price,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(width: 10),
            const Text(
              "تومان",
              style: TextStyle(fontFamily: "lalezar", fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
