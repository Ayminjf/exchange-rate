import 'package:exchange_rate/constants/constants.dart';
import 'package:exchange_rate/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CryptoItems extends StatelessWidget {
  final int? count;

  const CryptoItems({
    Key? key,
    this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return _buildCurrencyItem(context, index);
      },
      itemCount: count ?? 35,
      separatorBuilder: (context, index) => const Divider(
        height: 0.5,
        thickness: 0.5,
      ),
    );
  }

  Widget _buildCurrencyItem(BuildContext context, int index) {
    final dplc = Provider.of<DataPriceListAndCrypto>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCurrencyInfo(context, index, dplc),
          _buildCurrencyDetails(context, index, dplc),
        ],
      ),
    );
  }

  Widget _buildCurrencyInfo(
      BuildContext context, int index, DataPriceListAndCrypto dplc) {
    return Row(
      children: [
        SizedBox(
          height: 55,
          width: 55,
          child: Image.asset("assets/images/cryptos.png"),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dplc.cryptoCurrencyList[index].name,
                style: const TextStyle(
                    color: Color(0xFF494949),
                    fontSize: 18,
                    fontFamily: "lalezar")),
            Text(
              dplc.cryptoCurrencyList[index].symbol,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCurrencyDetails(
      BuildContext context, int index, DataPriceListAndCrypto dplc) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            dplc.cryptoCurrencyList[index].percentChange1H.startsWith('-')
                ? dplc.cryptoCurrencyList[index].percentChange1H
                    .replaceFirst(RegExp(r'-'), '')
                : dplc.cryptoCurrencyList[index].percentChange1H,
            style: TextStyle(
                color: dplc.cryptoCurrencyList[index].percentChange1H
                        .startsWith("-")
                    ? Colors.red
                    : Colors.green,
                fontSize: 18),
          ),
          Text(" / "),
          CryptoPriceContainer(
            dplc: dplc,
            index: index,
            price: dplc.cryptoCurrencyList[index].priceUsd,
          ),
        ],
      ),
    );
  }
}
