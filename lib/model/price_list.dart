import 'dart:convert';

class PriceListModel {
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

  factory PriceListModel.fromRawJson(String str) =>
      PriceListModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PriceListModel.fromJson(Map<String, dynamic> json) => PriceListModel(
        current: Map.from(json["current"])
            .map((k, v) => MapEntry<String, Current>(k, Current.fromJson(v))),
        toleranceLow:
            List<Last>.from(json["tolerance_low"].map((x) => Last.fromJson(x))),
        toleranceHigh: List<Last>.from(
            json["tolerance_high"].map((x) => Last.fromJson(x))),
        last: List<Last>.from(json["last"].map((x) => Last.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "current": Map.from(current)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "tolerance_low":
            List<dynamic>.from(toleranceLow.map((x) => x.toJson())),
        "tolerance_high":
            List<dynamic>.from(toleranceHigh.map((x) => x.toJson())),
        "last": List<dynamic>.from(last.map((x) => x.toJson())),
      };
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

  factory Current.fromRawJson(String str) => Current.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        p: json["p"],
        h: json["h"],
        l: json["l"],
        d: json["d"],
        dp: json["dp"]?.toDouble(),
        dt: dtValues.map[json["dt"]]!,
        t: json["t"],
        tEn: json["t_en"],
        tG: json["t-g"],
        ts: DateTime.parse(json["ts"]),
      );

  Map<String, dynamic> toJson() => {
        "p": p,
        "h": h,
        "l": l,
        "d": d,
        "dp": dp,
        "dt": dtValues.reverse[dt],
        "t": t,
        "t_en": tEn,
        "t-g": tG,
        "ts": ts.toIso8601String(),
      };
}

enum Dt { EMPTY, HIGH, LOW }

final dtValues = EnumValues({"": Dt.EMPTY, "high": Dt.HIGH, "low": Dt.LOW});

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
      );

  factory Last.fromRawJson(String str) => Last.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Last.fromJson(Map<String, dynamic> json) => Last(
        name: json["name"],
        itemId: json["item_id"],
        slug: json["slug"],
        p: json["p"],
        h: json["h"],
        l: json["l"],
        o: json["o"],
        d: json["d"],
        dp: json["dp"]?.toDouble(),
        dt: dtValues.map[json["dt"]]!,
        t: json["t"],
        tEn: json["t_en"],
        createdAt: json["created_at"],
        title: json["title"],
        titleEn: json["title_en"],
        phpFirstPrice: json["php:first-price"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "item_id": itemId,
        "slug": slug,
        "p": p,
        "h": h,
        "l": l,
        "o": o,
        "d": d,
        "dp": dp,
        "dt": dtValues.reverse[dt],
        "t": t,
        "t_en": tEn,
        "created_at": createdAt,
        "title": title,
        "title_en": titleEn,
        "php:first-price": phpFirstPrice,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
