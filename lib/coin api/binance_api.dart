// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BinanceData {
  static List<Binanceitem> item = [];
}

class Binanceitem {
  final String bidPrice;
  final String askPrice;
  final String lastPrice;
  final String bidQty;
  final String askQty;
  final String lastQty;

  final String openPrice;
  final String highPrice;
  final String lowPrice;

  final String volume;
  final String quoteVolume;
  
  final String priceChange;
  final String priceChangePercent;
  final String weightedAvgPrice;
  final String prevClosePrice;
  
  final String symbol;
  Binanceitem({
    required this.bidPrice,
    required this.askPrice,
    required this.bidQty,
    required this.askQty,
    required this.lastPrice,
    required this.lastQty,
    required this.quoteVolume,
    required this.openPrice,
    required this.lowPrice,
    required this.highPrice,
    required this.priceChange,
    required this.priceChangePercent,
    required this.weightedAvgPrice,
    required this.prevClosePrice,
    required this.volume,
    required this.symbol,
  });

  Binanceitem copyWith({
    String? bidPrice,
    String? askPrice,
    String? bidQty,
    String? askQty,
    String? lastPrice,
    String? lastQty,
    String? quoteVolume,
    String? openPrice,
    String? lowPrice,
    String? highPrice,
    String? priceChange,
    String? priceChangePercent,
    String? weightedAvgPrice,
    String? prevClosePrice,
    String? volume,
    String? symbol,
  }) {
    return Binanceitem(
      bidPrice: bidPrice ?? this.bidPrice,
      askPrice: askPrice ?? this.askPrice,
      bidQty: bidQty ?? this.bidQty,
      askQty: askQty ?? this.askQty,
      lastPrice: lastPrice ?? this.lastPrice,
      lastQty: lastQty ?? this.lastQty,
      quoteVolume: quoteVolume ?? this.quoteVolume,
      openPrice: openPrice ?? this.openPrice,
      lowPrice: lowPrice ?? this.lowPrice,
      highPrice: highPrice ?? this.highPrice,
      priceChange: priceChange ?? this.priceChange,
      priceChangePercent: priceChangePercent ?? this.priceChangePercent,
      weightedAvgPrice: weightedAvgPrice ?? this.weightedAvgPrice,
      prevClosePrice: prevClosePrice ?? this.prevClosePrice,
      volume: volume ?? this.volume,
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bidPrice': bidPrice,
      'askPrice': askPrice,
      'bidQty': bidQty,
      'askQty': askQty,
      'lastPrice': lastPrice,
      'lastQty': lastQty,
      'quoteVolume': quoteVolume,
      'openPrice': openPrice,
      'lowPrice': lowPrice,
      'highPrice': highPrice,
      'priceChange': priceChange,
      'priceChangePercent': priceChangePercent,
      'weightedAvgPrice': weightedAvgPrice,
      'prevClosePrice': prevClosePrice,
      'volume': volume,
      'symbol': symbol,
    };
  }

  factory Binanceitem.fromMap(Map<String, dynamic> map) {
    return Binanceitem(
      bidPrice: map['bidPrice'] as String,
      askPrice: map['askPrice'] as String,
      bidQty: map['bidQty'] as String,
      askQty: map['askQty'] as String,
      lastPrice: map['lastPrice'] as String,
      lastQty: map['lastQty'] as String,
      quoteVolume: map['quoteVolume'] as String,
      openPrice: map['openPrice'] as String,
      lowPrice: map['lowPrice'] as String,
      highPrice: map['highPrice'] as String,
      priceChange: map['priceChange'] as String,
      priceChangePercent: map['priceChangePercent'] as String,
      weightedAvgPrice: map['weightedAvgPrice'] as String,
      prevClosePrice: map['prevClosePrice'] as String,
      volume: map['volume'] as String,
      symbol: map['symbol'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Binanceitem.fromJson(String source) =>
      Binanceitem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Binanceitem(bidPrice: $bidPrice, askPrice: $askPrice, bidQty: $bidQty, askQty: $askQty, lastPrice: $lastPrice, lastQty: $lastQty, quoteVolume: $quoteVolume, openPrice: $openPrice, lowPrice: $lowPrice, highPrice: $highPrice, priceChange: $priceChange, priceChangePercent: $priceChangePercent, weightedAvgPrice: $weightedAvgPrice, prevClosePrice: $prevClosePrice, volume: $volume, symbol: $symbol)';
  }

  @override
  bool operator ==(covariant Binanceitem other) {
    if (identical(this, other)) return true;

    return other.bidPrice == bidPrice &&
        other.askPrice == askPrice &&
        other.bidQty == bidQty &&
        other.askQty == askQty &&
        other.lastPrice == lastPrice &&
        other.lastQty == lastQty &&
        other.quoteVolume == quoteVolume &&
        other.openPrice == openPrice &&
        other.lowPrice == lowPrice &&
        other.highPrice == highPrice &&
        other.priceChange == priceChange &&
        other.priceChangePercent == priceChangePercent &&
        other.weightedAvgPrice == weightedAvgPrice &&
        other.prevClosePrice == prevClosePrice &&
        other.volume == volume &&
        other.symbol == symbol;
  }

  @override
  int get hashCode {
    return bidPrice.hashCode ^
        askPrice.hashCode ^
        bidQty.hashCode ^
        askQty.hashCode ^
        lastPrice.hashCode ^
        lastQty.hashCode ^
        quoteVolume.hashCode ^
        openPrice.hashCode ^
        lowPrice.hashCode ^
        highPrice.hashCode ^
        priceChange.hashCode ^
        priceChangePercent.hashCode ^
        weightedAvgPrice.hashCode ^
        prevClosePrice.hashCode ^
        volume.hashCode ^
        symbol.hashCode;
  }
}
