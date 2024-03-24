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
}
