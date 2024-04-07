import 'package:exchange_rate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoItems extends StatelessWidget {
  final int? count;

  const CryptoItems({
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
      itemCount: count ?? Constants.cryptoSymbol.length,
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
          _buildCurrencyDetails(context),
        ],
      ),
    );
  }

  Widget _buildCurrencyInfo(BuildContext context, int index) {
    return Row(
      children: [
        SizedBox(
          height: 55,
          width: 55,
          child: SvgPicture.asset(
            "assets/images/crypto_screen/${Constants.cryptoSymbol[index]}.svg",
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.cryptoSymbol[index],
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              Constants.cryptoSymbol[index].toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCurrencyDetails(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          Constants.priceFormat("670000".persianNumber),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 50,
          height: 25,
          decoration: BoxDecoration(
            color: Constants.highChangeColor,
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
            child: Text(
              "2.4".persianNumber,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    );
  }
}
