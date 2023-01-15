// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LBankData {
  static List<LBankitem> item = [];
}

class LBankitem {
  final String symbol;
  final Tickeritem ticker;
  LBankitem({
    required this.symbol,
    required this.ticker,
  });

  get high => null;

  LBankitem copyWith({
    String? symbol,
    Tickeritem? ticker,
  }) {
    return LBankitem(
      symbol: symbol ?? this.symbol,
      ticker: ticker ?? this.ticker,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'symbol': symbol,
      'ticker': ticker.toMap(),
    };
  }

  factory LBankitem.fromMap(Map<String, dynamic> map) {
    return LBankitem(
      symbol: map['symbol'] as String,
      ticker: Tickeritem.fromMap(map['ticker'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory LBankitem.fromJson(String source) => LBankitem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LBankitem(symbol: $symbol, ticker: $ticker)';

  @override
  bool operator ==(covariant LBankitem other) {
    if (identical(this, other)) return true;
  
    return 
      other.symbol == symbol &&
      other.ticker == ticker;
  }

  @override
  int get hashCode => symbol.hashCode ^ ticker.hashCode;
}

class Tickeritem {
  final num low;
  final num high;
  final num vol;
  final num change;
  final num turnover;
  final num latest;
  Tickeritem({
    required this.low,
    required this.high,
    required this.vol,
    required this.change,
    required this.turnover,
    required this.latest,
  });

  Tickeritem copyWith({
    num? low,
    num? high,
    num? vol,
    num? change,
    num? turnover,
    num? latest,
  }) {
    return Tickeritem(
      low: low ?? this.low,
      high: high ?? this.high,
      vol: vol ?? this.vol,
      change: change ?? this.change,
      turnover: turnover ?? this.turnover,
      latest: latest ?? this.latest,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'low': low,
      'high': high,
      'vol': vol,
      'change': change,
      'turnover': turnover,
      'latest': latest,
    };
  }

  factory Tickeritem.fromMap(Map<String, dynamic> map) {
    return Tickeritem(
      low: map['low'] as num,
      high: map['high'] as num,
      vol: map['vol'] as num,
      change: map['change'] as num,
      turnover: map['turnover'] as num,
      latest: map['latest'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Tickeritem.fromJson(String source) =>
      Tickeritem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Tickeritem(low: $low, high: $high, vol: $vol, change: $change, turnover: $turnover, latest: $latest)';
  }

  @override
  bool operator ==(covariant Tickeritem other) {
    if (identical(this, other)) return true;

    return other.low == low &&
        other.high == high &&
        other.vol == vol &&
        other.change == change &&
        other.turnover == turnover &&
        other.latest == latest;
  }

  @override
  int get hashCode {
    return low.hashCode ^
        high.hashCode ^
        vol.hashCode ^
        change.hashCode ^
        turnover.hashCode ^
        latest.hashCode;
  }
}
