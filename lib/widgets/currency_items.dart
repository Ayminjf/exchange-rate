import 'package:exchange_rate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          _buildCurrencyDetails(context),
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
          height: 3,
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
