import 'package:exchange_rate/widgets/gold_items.dart';
import 'package:flutter/material.dart';

class GoldScreen extends StatefulWidget {
  const GoldScreen({super.key});

  @override
  State<GoldScreen> createState() => _GoldScreenState();
}

class _GoldScreenState extends State<GoldScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Localizations.override(
      context: context,
      locale: const Locale('fa'),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: size.height * 0.75,
              child: const GoldItems(),
            ),
          ),
        ),
      ),
    );
  }
}
