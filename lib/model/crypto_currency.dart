import 'dart:convert';

class CryptoCurrencyModel {
  List<Datum> data;
  Info info;

  CryptoCurrencyModel({
    required this.data,
    required this.info,
  });

  CryptoCurrencyModel copyWith({
    List<Datum>? data,
    Info? info,
  }) =>
      CryptoCurrencyModel(
        data: data ?? this.data,
        info: info ?? this.info,
      );

  factory CryptoCurrencyModel.fromRawJson(String str) =>
      CryptoCurrencyModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CryptoCurrencyModel.fromJson(Map<String, dynamic> json) =>
      CryptoCurrencyModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        info: Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "info": info.toJson(),
      };
}

class Datum {
  String id;
  String symbol;
  String name;
  String nameid;
  int rank;
  String priceUsd;
  String percentChange24H;
  String percentChange1H;
  String percentChange7D;
  String priceBtc;
  String marketCapUsd;
  double volume24;
  double volume24A;
  String csupply;
  String tsupply;
  String msupply;

  Datum({
    required this.id,
    required this.symbol,
    required this.name,
    required this.nameid,
    required this.rank,
    required this.priceUsd,
    required this.percentChange24H,
    required this.percentChange1H,
    required this.percentChange7D,
    required this.priceBtc,
    required this.marketCapUsd,
    required this.volume24,
    required this.volume24A,
    required this.csupply,
    required this.tsupply,
    required this.msupply,
  });

  Datum copyWith({
    String? id,
    String? symbol,
    String? name,
    String? nameid,
    int? rank,
    String? priceUsd,
    String? percentChange24H,
    String? percentChange1H,
    String? percentChange7D,
    String? priceBtc,
    String? marketCapUsd,
    double? volume24,
    double? volume24A,
    String? csupply,
    String? tsupply,
    String? msupply,
  }) =>
      Datum(
        id: id ?? this.id,
        symbol: symbol ?? this.symbol,
        name: name ?? this.name,
        nameid: nameid ?? this.nameid,
        rank: rank ?? this.rank,
        priceUsd: priceUsd ?? this.priceUsd,
        percentChange24H: percentChange24H ?? this.percentChange24H,
        percentChange1H: percentChange1H ?? this.percentChange1H,
        percentChange7D: percentChange7D ?? this.percentChange7D,
        priceBtc: priceBtc ?? this.priceBtc,
        marketCapUsd: marketCapUsd ?? this.marketCapUsd,
        volume24: volume24 ?? this.volume24,
        volume24A: volume24A ?? this.volume24A,
        csupply: csupply ?? this.csupply,
        tsupply: tsupply ?? this.tsupply,
        msupply: msupply ?? this.msupply,
      );

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] ?? "",
        symbol: json["symbol"] ?? "",
        name: json["name"] ?? "",
        nameid: json["nameid"] ?? "",
        rank: json["rank"] ?? 0,
        priceUsd: json["price_usd"] ?? "",
        percentChange24H: json["percent_change_24h"] ?? "",
        percentChange1H: json["percent_change_1h"] ?? "",
        percentChange7D: json["percent_change_7d"] ?? "",
        priceBtc: json["price_btc"] ?? "",
        marketCapUsd: json["market_cap_usd"] ?? "",
        volume24: json["volume24"]?.toDouble() ?? 0.0,
        volume24A: json["volume24a"]?.toDouble() ?? 0.0,
        csupply: json["csupply"] ?? "",
        tsupply: json["tsupply"] ?? "",
        msupply: json["msupply"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "nameid": nameid,
        "rank": rank,
        "price_usd": priceUsd,
        "percent_change_24h": percentChange24H,
        "percent_change_1h": percentChange1H,
        "percent_change_7d": percentChange7D,
        "price_btc": priceBtc,
        "market_cap_usd": marketCapUsd,
        "volume24": volume24,
        "volume24a": volume24A,
        "csupply": csupply,
        "tsupply": tsupply,
        "msupply": msupply,
      };
}

class Info {
  int coinsNum;
  int time;

  Info({
    required this.coinsNum,
    required this.time,
  });

  Info copyWith({
    int? coinsNum,
    int? time,
  }) =>
      Info(
        coinsNum: coinsNum ?? this.coinsNum,
        time: time ?? this.time,
      );

  factory Info.fromRawJson(String str) => Info.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        coinsNum: json["coins_num"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "coins_num": coinsNum,
        "time": time,
      };
}
