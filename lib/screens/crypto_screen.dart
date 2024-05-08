import 'package:exchange_rate/widgets/crypto_items.dart';
import 'package:flutter/material.dart';

class CryptoScreen extends StatelessWidget {
  const CryptoScreen({super.key});

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
              child: const CryptoItems(),
            ),
          ),
        ),
      ),
    );
  }
}
