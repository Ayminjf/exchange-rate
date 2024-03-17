import 'package:exchange_rate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoldItems extends StatelessWidget {
  const GoldItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return _buildCurrencyItem(context, index);
      },
      itemCount: Constants.nameGold.length,
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
            borderRadius: BorderRadius.all(Radius.circular(25)),
            // shape: BoxShape.circle,
          ),
          child: SizedBox(
            height: 55,
            width: 55,
            child: SvgPicture.asset(
              "assets/images/gold.svg",
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.nameGold[index],
              style: Theme.of(context).textTheme.titleLarge,
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
          Constants.priceFormat("40000".persianNumber),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 3,
        ),
      ],
    );
  }
}
