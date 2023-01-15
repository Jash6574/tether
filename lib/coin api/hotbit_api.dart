// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';


class HOTBITData {
  static List<HOTBITitem> item = [];
}

class HOTBITitem {
  final String buy;
  final String sell;
  final String last;
  final String open;
  final String close;
  final String low;
  final String high;
  final String vol;
  final String base_volume;
  final String quote_volume;
  final String symbol;


  HOTBITitem({
    required this.buy,
    required this.sell,
    required this.last,
    required this.open,
    required this.close,
    required this.low,
    required this.high,
    required this.vol,
    required this.base_volume,
    required this.quote_volume,
    required this.symbol,
  });

  HOTBITitem copyWith({
    String? buy,
    String? sell,
    String? last,
    String? open,
    String? close,
    String? low,
    String? high,
    String? vol,
    String? base_volume,
    String? quote_volume,
    String? symbol,
  }) {
    return HOTBITitem(
      buy: buy ?? this.buy,
      sell: sell ?? this.sell,
      last: last ?? this.last,
      open: open ?? this.open,
      close: close ?? this.close,
      low: low ?? this.low,
      high: high ?? this.high,
      vol: vol ?? this.vol,
      base_volume: base_volume ?? this.base_volume,
      quote_volume: quote_volume ?? this.quote_volume,
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buy': buy,
      'sell': sell,
      'last': last,
      'open': open,
      'close': close,
      'low': low,
      'high': high,
      'vol': vol,
      'base_volume': base_volume,
      'quote_volume': quote_volume,
      'symbol': symbol,
    };
  }

  factory HOTBITitem.fromMap(Map<String, dynamic> map) {
    return HOTBITitem(
      buy: map['buy'] as String,
      sell: map['sell'] as String,
      last: map['last'] as String,
      open: map['open'] as String,
      close: map['close'] as String,
      low: map['low'] as String,
      high: map['high'] as String,
      vol: map['vol'] as String,
      base_volume: map['base_volume'] as String,
      quote_volume: map['quote_volume'] as String,
      symbol: map['symbol'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HOTBITitem.fromJson(String source) =>
      HOTBITitem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HOTBITitem(buy: $buy, sell: $sell, last: $last, open: $open, close: $close, low: $low, high: $high, vol: $vol, base_volume: $base_volume, quote_volume: $quote_volume, symbol: $symbol)';
  }

  @override
  bool operator ==(covariant HOTBITitem other) {
    if (identical(this, other)) return true;
  
    return 
      other.buy == buy &&
      other.sell == sell &&
      other.last == last &&
      other.open == open &&
      other.close == close &&
      other.low == low &&
      other.high == high &&
      other.vol == vol &&
      other.base_volume == base_volume &&
      other.quote_volume == quote_volume &&
      other.symbol == symbol;
  }

  @override
  int get hashCode {
    return buy.hashCode ^
      sell.hashCode ^
      last.hashCode ^
      open.hashCode ^
      close.hashCode ^
      low.hashCode ^
      high.hashCode ^
      vol.hashCode ^
      base_volume.hashCode ^
      quote_volume.hashCode ^
      symbol.hashCode;
  }
}
