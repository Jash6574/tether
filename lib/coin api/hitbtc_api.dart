// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HitBTCData {
  static List<HitBTCitem> item = [];
}

class HitBTCitem {
  final String? bid;
  final String? ask;
  final String? last;
  final String? open;
  final String? low;
  final String? high;
  final String? volume;
  final String? volumeQuote;
  final String? timestamp;
  final String? symbol;
  HitBTCitem({
    required this.bid,
    required this.ask,
    required this.last,
    required this.open,
    required this.low,
    required this.high,
    required this.volume,
    required this.volumeQuote,
    required this.timestamp,
    required this.symbol,
  });

  HitBTCitem copyWith({
    String? bid,
    String? ask,
    String? last,
    String? open,
    String? low,
    String? high,
    String? volume,
    String? volumeQuote,
    String? timestamp,
    String? symbol,
  }) {
    return HitBTCitem(
      bid: bid ?? this.bid,
      ask: ask ?? this.ask,
      last: last ?? this.last,
      open: open ?? this.open,
      low: low ?? this.low,
      high: high ?? this.high,
      volume: volume ?? this.volume,
      volumeQuote: volumeQuote ?? this.volumeQuote,
      timestamp: timestamp ?? this.timestamp,
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bid': bid,
      'ask': ask,
      'last': last,
      'open': open,
      'low': low,
      'high': high,
      'volume': volume,
      'volumeQuote': volumeQuote,
      'timestamp': timestamp,
      'symbol': symbol,
    };
  }

  factory HitBTCitem.fromMap(Map<String, dynamic> map) {
    return HitBTCitem(
      bid: map['bid'] as String?,
      ask: map['ask'] as String?,
      last: map['last'] as String?,
      open: map['open'] as String?,
      low: map['low'] as String?,
      high: map['high'] as String?,
      volume: map['volume'] as String?,
      volumeQuote: map['volumeQuote'] as String?,
      timestamp: map['timestamp'] as String?,
      symbol: map['symbol'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory HitBTCitem.fromJson(String source) =>
      HitBTCitem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HitBTCitem(bid: $bid, ask: $ask, last: $last, open: $open, low: $low, high: $high, volume: $volume, volumeQuote: $volumeQuote, timestamp: $timestamp, symbol: $symbol)';
  }

  @override
  bool operator ==(covariant HitBTCitem other) {
    if (identical(this, other)) return true;

    return other.bid == bid &&
        other.ask == ask &&
        other.last == last &&
        other.open == open &&
        other.low == low &&
        other.high == high &&
        other.volume == volume &&
        other.volumeQuote == volumeQuote &&
        other.timestamp == timestamp &&
        other.symbol == symbol;
  }

  @override
  int get hashCode {
    return bid.hashCode ^
        ask.hashCode ^
        last.hashCode ^
        open.hashCode ^
        low.hashCode ^
        high.hashCode ^
        volume.hashCode ^
        volumeQuote.hashCode ^
        timestamp.hashCode ^
        symbol.hashCode;
  }
}
