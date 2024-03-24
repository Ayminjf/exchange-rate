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
      );
}
