import 'dart:io';

import 'package:flutter/material.dart';
import 'package:exchange_rate/model/price_list.dart';
import 'package:exchange_rate/services/services_api.dart';
import 'package:exchange_rate/model/crypto_currency.dart';

class DataPriceListAndCrypto extends ChangeNotifier {
  late Map<String, Current> priceList;
  late List<Datum> cryptoCurrencyList;

  bool loading = false;
  bool activeConnection = false;
  ServicesApi servicesApi = ServicesApi();

  getData() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        activeConnection = true;
        loading = true;
        priceList = await servicesApi.fetchPriceListData();
        cryptoCurrencyList = await servicesApi.fetchCryptoCurrencyData();
        loading = false;
      }
    } on SocketException catch (_) {
      activeConnection = false;
    }

    notifyListeners();
  }
}
