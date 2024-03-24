class PriceListModel {
<<<<<<< HEAD
  List<Datum> data;
  Info info;

  PriceListModel({
    required this.data,
    required this.info,
  });

  PriceListModel copyWith({
    List<Datum>? data,
    Info? info,
  }) =>
      PriceListModel(
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
=======
  Map<String, Current> current;
  List<Last> toleranceLow;
  List<Last> toleranceHigh;
  List<Last> last;

  PriceListModel({
    required this.current,
    required this.toleranceLow,
    required this.toleranceHigh,
    required this.last,
  });

  PriceListModel copyWith({
    Map<String, Current>? current,
    List<Last>? toleranceLow,
    List<Last>? toleranceHigh,
    List<Last>? last,
  }) =>
      PriceListModel(
        current: current ?? this.current,
        toleranceLow: toleranceLow ?? this.toleranceLow,
        toleranceHigh: toleranceHigh ?? this.toleranceHigh,
        last: last ?? this.last,
      );
}

class Current {
  String p;
  String h;
  String l;
  String d;
  double dp;
  Dt dt;
  String t;
  String tEn;
  String tG;
  DateTime ts;

  Current({
    required this.p,
    required this.h,
    required this.l,
    required this.d,
    required this.dp,
    required this.dt,
    required this.t,
    required this.tEn,
    required this.tG,
    required this.ts,
  });

  Current copyWith({
    String? p,
    String? h,
    String? l,
    String? d,
    double? dp,
    Dt? dt,
    String? t,
    String? tEn,
    String? tG,
    DateTime? ts,
  }) =>
      Current(
        p: p ?? this.p,
        h: h ?? this.h,
        l: l ?? this.l,
        d: d ?? this.d,
        dp: dp ?? this.dp,
        dt: dt ?? this.dt,
        t: t ?? this.t,
        tEn: tEn ?? this.tEn,
        tG: tG ?? this.tG,
        ts: ts ?? this.ts,
      );
}

enum Dt { EMPTY, HIGH, LOW }

class Last {
  String name;
  int itemId;
  String slug;
  String p;
  String h;
  String l;
  String o;
  String d;
  double dp;
  Dt dt;
  String t;
  String tEn;
  String createdAt;
  String title;
  String titleEn;
  String phpFirstPrice;

  Last({
    required this.name,
    required this.itemId,
    required this.slug,
    required this.p,
    required this.h,
    required this.l,
    required this.o,
    required this.d,
    required this.dp,
    required this.dt,
    required this.t,
    required this.tEn,
    required this.createdAt,
    required this.title,
    required this.titleEn,
    required this.phpFirstPrice,
  });

  Last copyWith({
    String? name,
    int? itemId,
    String? slug,
    String? p,
    String? h,
    String? l,
    String? o,
    String? d,
    double? dp,
    Dt? dt,
    String? t,
    String? tEn,
    String? createdAt,
    String? title,
    String? titleEn,
    String? phpFirstPrice,
  }) =>
      Last(
        name: name ?? this.name,
        itemId: itemId ?? this.itemId,
        slug: slug ?? this.slug,
        p: p ?? this.p,
        h: h ?? this.h,
        l: l ?? this.l,
        o: o ?? this.o,
        d: d ?? this.d,
        dp: dp ?? this.dp,
        dt: dt ?? this.dt,
        t: t ?? this.t,
        tEn: tEn ?? this.tEn,
        createdAt: createdAt ?? this.createdAt,
        title: title ?? this.title,
        titleEn: titleEn ?? this.titleEn,
        phpFirstPrice: phpFirstPrice ?? this.phpFirstPrice,
>>>>>>> model
      );
}
