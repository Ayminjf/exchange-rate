import 'package:flutter/material.dart';
import 'package:exchange_rate/model/price_list.dart';
import 'package:exchange_rate/services/services_api.dart';
import 'package:exchange_rate/model/crypto_currency.dart';

class DataPriceListAndCrypto extends ChangeNotifier {
  late Map<String, Current> priceList;
  late List<Datum> cryptoCurrencyList;

  bool loading = false;
  ServicesApi servicesApi = ServicesApi();

  getData() async {
    loading = true;
    priceList = await servicesApi.fetchPriceListData();
    cryptoCurrencyList = await servicesApi.fetchCryptoCurrencyData();
    loading = false;
    notifyListeners();
  }
}
