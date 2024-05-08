import 'package:exchange_rate/provider/provider.dart';
import 'package:exchange_rate/widgets/crypto_items.dart';
import 'package:exchange_rate/widgets/currency_items.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rate/constants/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final dplc = Provider.of<DataPriceListAndCrypto>(context);
    return Localizations.override(
      context: context,
      locale: const Locale('fa'),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Constants.greyColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: size.height * 0.75,
                      child: const CurrencyItems(
                        count: 3,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.54,
                      decoration: BoxDecoration(
                        color: Constants.greyColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SizedBox(
                        height: size.height * 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildCoinItemHomeScreen(context, 0, dplc),
                            const SizedBox(width: 15),
                            _buildCoinItemHomeScreen(context, 1, dplc)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.18,
                      width: size.width * 0.34,
                      decoration: BoxDecoration(
                        color: Constants.greyColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SizedBox(
                        height: size.height * 0.75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildGoldItemHomeScreen(context, 0, dplc),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  height: size.height * 0.23,
                  decoration: BoxDecoration(
                    color: Constants.greyColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: size.height * 0.75,
                      child: const CryptoItems(count: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildCoinItemHomeScreen(
  BuildContext context,
  int index,
  DataPriceListAndCrypto dplc,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Color(0xFFDDDDDD),
              // borderRadius: BorderRadius.all(Radius.circular(15)),
              shape: BoxShape.circle,
            ),
            child: SizedBox(
              height: 55,
              width: 55,
              child: SvgPicture.asset(
                "assets/images/coin_screen/coin.svg",
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Constants.nameCoin[index],
                style: const TextStyle(
                  fontFamily: "lalezar",
                  fontSize: 18,
                ),
              ),
              Text(Constants.priceListFormat(
                  dplc.priceList[Constants.sekke[index]]!.p)),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget _buildGoldItemHomeScreen(
  BuildContext context,
  int index,
  DataPriceListAndCrypto dplc,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Color(0xFFDDDDDD),
              // borderRadius: BorderRadius.all(Radius.circular(15)),
              shape: BoxShape.circle,
            ),
            child: SizedBox(
              height: 55,
              width: 55,
              child: SvgPicture.asset(
                "assets/images/gold_screen/gold.svg",
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Constants.nameGold[index],
                style: const TextStyle(
                  fontFamily: "lalezar",
                  fontSize: 18,
                ),
              ),
              Text(
                Constants.priceListFormat(
                    dplc.priceList[Constants.tala[index]]!.p),
                style: const TextStyle(
                  fontFamily: "iranSans",
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
