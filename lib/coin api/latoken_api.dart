// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LATokenData {
  static List<LATokenitem> item = [];
}

class LATokenitem {
  final String baseCurrency;
  final String quoteCurrency;
  final String volume24h;
  final String volume7d;
  final String change24h;
  final String change7d;
  final String amount24h;
  final String amount7d;
  final String lastPrice;
  final String lastQuantity;
  final String bestBid;
  final String bestBidQuantity;
  final String bestAsk;
  final String bestAskQuantity;
  final String symbol;
  
  
  LATokenitem({
    required this.baseCurrency,
    required this.quoteCurrency,
    required this.volume24h,
    required this.volume7d,
    required this.change24h,
    required this.change7d,
    required this.amount24h,
    required this.amount7d,
    required this.lastPrice,
    required this.lastQuantity,
    required this.bestBid,
    required this.bestBidQuantity,
    required this.bestAsk,
    required this.bestAskQuantity,
    required this.symbol,
  });

  LATokenitem copyWith({
    String? baseCurrency,
    String? quoteCurrency,
    String? volume24h,
    String? volume7d,
    String? change24h,
    String? change7d,
    String? amount24h,
    String? amount7d,
    String? lastPrice,
    String? lastQuantity,
    String? bestBid,
    String? bestBidQuantity,
    String? bestAsk,
    String? bestAskQuantity,
    String? symbol,
  }) {
    return LATokenitem(
      baseCurrency: baseCurrency ?? this.baseCurrency,
      quoteCurrency: quoteCurrency ?? this.quoteCurrency,
      volume24h: volume24h ?? this.volume24h,
      volume7d: volume7d ?? this.volume7d,
      change24h: change24h ?? this.change24h,
      change7d: change7d ?? this.change7d,
      amount24h: amount24h ?? this.amount24h,
      amount7d: amount7d ?? this.amount7d,
      lastPrice: lastPrice ?? this.lastPrice,
      lastQuantity: lastQuantity ?? this.lastQuantity,
      bestBid: bestBid ?? this.bestBid,
      bestBidQuantity: bestBidQuantity ?? this.bestBidQuantity,
      bestAsk: bestAsk ?? this.bestAsk,
      bestAskQuantity: bestAskQuantity ?? this.bestAskQuantity,
      symbol: symbol ?? this.symbol,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseCurrency': baseCurrency,
      'quoteCurrency': quoteCurrency,
      'volume24h': volume24h,
      'volume7d': volume7d,
      'change24h': change24h,
      'change7d': change7d,
      'amount24h': amount24h,
      'amount7d': amount7d,
      'lastPrice': lastPrice,
      'lastQuantity': lastQuantity,
      'bestBid': bestBid,
      'bestBidQuantity': bestBidQuantity,
      'bestAsk': bestAsk,
      'bestAskQuantity': bestAskQuantity,
      'symbol': symbol,
    };
  }

  factory LATokenitem.fromMap(Map<String, dynamic> map) {
    return LATokenitem(
      baseCurrency: map['baseCurrency'] as String,
      quoteCurrency: map['quoteCurrency'] as String,
      volume24h: map['volume24h'] as String,
      volume7d: map['volume7d'] as String,
      change24h: map['change24h'] as String,
      change7d: map['change7d'] as String,
      amount24h: map['amount24h'] as String,
      amount7d: map['amount7d'] as String,
      lastPrice: map['lastPrice'] as String,
      lastQuantity: map['lastQuantity'] as String,
      bestBid: map['bestBid'] as String,
      bestBidQuantity: map['bestBidQuantity'] as String,
      bestAsk: map['bestAsk'] as String,
      bestAskQuantity: map['bestAskQuantity'] as String,
      symbol: map['symbol'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LATokenitem.fromJson(String source) => LATokenitem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LATokenitem(baseCurrency: $baseCurrency, quoteCurrency: $quoteCurrency, volume24h: $volume24h, volume7d: $volume7d, change24h: $change24h, change7d: $change7d, amount24h: $amount24h, amount7d: $amount7d, lastPrice: $lastPrice, lastQuantity: $lastQuantity, bestBid: $bestBid, bestBidQuantity: $bestBidQuantity, bestAsk: $bestAsk, bestAskQuantity: $bestAskQuantity, symbol: $symbol)';
  }

  @override
  bool operator ==(covariant LATokenitem other) {
    if (identical(this, other)) return true;
  
    return 
      other.baseCurrency == baseCurrency &&
      other.quoteCurrency == quoteCurrency &&
      other.volume24h == volume24h &&
      other.volume7d == volume7d &&
      other.change24h == change24h &&
      other.change7d == change7d &&
      other.amount24h == amount24h &&
      other.amount7d == amount7d &&
      other.lastPrice == lastPrice &&
      other.lastQuantity == lastQuantity &&
      other.bestBid == bestBid &&
      other.bestBidQuantity == bestBidQuantity &&
      other.bestAsk == bestAsk &&
      other.bestAskQuantity == bestAskQuantity &&
      other.symbol == symbol;
  }

  @override
  int get hashCode {
    return baseCurrency.hashCode ^
      quoteCurrency.hashCode ^
      volume24h.hashCode ^
      volume7d.hashCode ^
      change24h.hashCode ^
      change7d.hashCode ^
      amount24h.hashCode ^
      amount7d.hashCode ^
      lastPrice.hashCode ^
      lastQuantity.hashCode ^
      bestBid.hashCode ^
      bestBidQuantity.hashCode ^
      bestAsk.hashCode ^
      bestAskQuantity.hashCode ^
      symbol.hashCode;
  }
}
