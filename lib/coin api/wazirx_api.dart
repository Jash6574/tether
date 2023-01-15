// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WazirxData {
  static List<Wazirxitem> item = [];
}

class Wazirxitem {
  final String baseAsset;
  final String quoteAsset;
  final String bidPrice;
  final String askPrice;
  final String lastPrice;
  final String openPrice;
  final String lowPrice;
  final String highPrice;
  final String volume;
  final String symbol;
  Wazirxitem({
    required this.baseAsset,
    required this.quoteAsset,
    required this.bidPrice,
    required this.askPrice,
    required this.lastPrice,
    required this.openPrice,
    required this.lowPrice,
    required this.highPrice,
    required this.volume,
    required this.symbol,
  });

  Wazirxitem copyWith({
    String? baseAsset,
    String? quoteAsset,
    String? bidPrice,
    String? askPrice,
    String? lastPrice,
    String? openPrice,
    String? lowPrice,
    String? highPrice,
    String? volume,
    String? symbol,
  }) {
    return Wazirxitem(
      baseAsset: baseAsset ?? this.baseAsset,
      quoteAsset: quoteAsset ?? this.quoteAsset,
      bidPrice: bidPrice ?? this.bidPrice,
      askPrice: askPrice ?? this.askPrice,
      lastPrice: lastPrice ?? this.lastPrice,
      openPrice: openPrice ?? this.openPrice,
      lowPrice: lowPrice ?? this.lowPrice,
      highPrice: highPrice ?? this.highPrice,
      volume: volume ?? this.volume,
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseAsset': baseAsset,
      'quoteAsset': quoteAsset,
      'bidPrice': bidPrice,
      'askPrice': askPrice,
      'lastPrice': lastPrice,
      'openPrice': openPrice,
      'lowPrice': lowPrice,
      'highPrice': highPrice,
      'volume': volume,
      'symbol': symbol,
    };
  }

  factory Wazirxitem.fromMap(Map<String, dynamic> map) {
    return Wazirxitem(
      baseAsset: map['baseAsset'] as String,
      quoteAsset: map['quoteAsset'] as String,
      bidPrice: map['bidPrice'] as String,
      askPrice: map['askPrice'] as String,
      lastPrice: map['lastPrice'] as String,
      openPrice: map['openPrice'] as String,
      lowPrice: map['lowPrice'] as String,
      highPrice: map['highPrice'] as String,
      volume: map['volume'] as String,
      symbol: map['symbol'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wazirxitem.fromJson(String source) =>
      Wazirxitem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Wazirxitem(baseAsset: $baseAsset, quoteAsset: $quoteAsset, bidPrice: $bidPrice, askPrice: $askPrice, lastPrice: $lastPrice, openPrice: $openPrice, lowPrice: $lowPrice, highPrice: $highPrice, volume: $volume, symbol: $symbol)';
  }

  @override
  bool operator ==(covariant Wazirxitem other) {
    if (identical(this, other)) return true;

    return other.baseAsset == baseAsset &&
        other.quoteAsset == quoteAsset &&
        other.bidPrice == bidPrice &&
        other.askPrice == askPrice &&
        other.lastPrice == lastPrice &&
        other.openPrice == openPrice &&
        other.lowPrice == lowPrice &&
        other.highPrice == highPrice &&
        other.volume == volume &&
        other.symbol == symbol;
  }

  @override
  int get hashCode {
    return baseAsset.hashCode ^
        quoteAsset.hashCode ^
        bidPrice.hashCode ^
        askPrice.hashCode ^
        lastPrice.hashCode ^
        openPrice.hashCode ^
        lowPrice.hashCode ^
        highPrice.hashCode ^
        volume.hashCode ^
        symbol.hashCode;
  }
}
