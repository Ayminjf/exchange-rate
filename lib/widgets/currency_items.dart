import 'package:exchange_rate/constants/constants.dart';
import 'package:exchange_rate/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CurrencyItems extends StatelessWidget {
  final int? count;
  const CurrencyItems({
    Key? key,
    this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return _buildCurrencyItem(context, index);
      },
      itemCount: count ?? Constants.flagCurrency.length,
    );
  }

  Widget _buildCurrencyItem(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCurrencyInfo(context, index),
          _buildCurrencyDetails(context, index),
        ],
      ),
    );
  }

  Widget _buildCurrencyInfo(BuildContext context, int index) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Color(0xFFDDDDDD),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: SizedBox(
            height: 55,
            width: 55,
            child: SvgPicture.asset(
              "assets/images/currency_screen/${Constants.flagCurrency[index]}.svg",
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.nameCurrency[index],
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              Constants.flagCurrency[index].toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCurrencyDetails(BuildContext context, int index) {
    final dplc = Provider.of<DataPriceListAndCrypto>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: PriceContainer(
        dplc: dplc,
        index: index,
        price: Constants.flagCurrency[index] == "usd"
            ? Constants.priceListFormat(dplc.priceList["price_dollar_rl"]!.p)
            : Constants.priceListFormat(
                dplc.priceList["price_${Constants.flagCurrency[index]}"]!.p),
      ),
    );
  }
}
