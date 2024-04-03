import 'package:exchange_rate/model/crypto_currency.dart';
import 'package:http/http.dart' as http;
import 'package:exchange_rate/model/price_list.dart';
import 'dart:convert';

class ServicesApi {
  Future<Map<String, Current>> fetchPriceListData() async {
    try {
      final response = await http.get(
        Uri.parse("https://call1.tgju.org/ajax.json"),
        headers: <String, String>{
          'Accept': '*/*',
          'charset': 'utf-8',
          'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, Current> priceMap =
            PriceListModel.fromJson(json.decode(response.body)).current;
        return priceMap;
      } else {
        throw Exception('Failed to load price list');
      }
    } catch (e) {
      throw Exception("An error occurred: $e");
    }
  }

  Future<List<Datum>> fetchCryptoCurrencyData() async {
    try {
      final response = await http.get(
        Uri.parse("https://www.megaweb.ir/api/digital-money"),
      );

      if (response.statusCode == 200) {
        final List<Datum> cryptoList =
            CryptoCurrencyModel.fromJson(json.decode(response.body)).data;
        return cryptoList;
      } else {
        throw Exception('Failed to load price list');
      }
    } catch (e) {
      throw Exception("An error occurred: $e");
    }
  }
}
