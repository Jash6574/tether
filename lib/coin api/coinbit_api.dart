// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import, unnecessary_this
import 'dart:convert';

import 'package:flutter/material.dart';

class CoinsBitData {
  static List<Item> item = [];
  static Map<String, dynamic> data = {};
}

class CoinsBitDataBTC {
  static List<Item> item = [];
  static Map<String, dynamic> data = {};
}

class CoinsBitDataETH {
  static List<Item> item = [];
  static Map<String, dynamic> data = {};
}

class Product {
  static List<String> item = [];
}

class Coindetails {
  static List<String> item = [];
}

class Coinbititem {
  static Item item = Item(
      bid: "",
      ask: "",
      last: "",
      open: "",
      low: "",
      high: "",
      volume: "",
      change: "");
}

class CoinbititemBTC {
  static Item item = Item(
      bid: "",
      ask: "",
      last: "",
      open: "",
      low: "",
      high: "",
      volume: "",
      change: "");
}

class CoinbititemETH {
  static Item item = Item(
      bid: "",
      ask: "",
      last: "",
      open: "",
      low: "",
      high: "",
      volume: "",
      change: "");
}

class Item {
  final String bid;
  final String ask;
  final String last;
  final String open;
  final String low;
  final String high;
  final String volume;
  final String change;

  Item({
    required this.bid,
    required this.ask,
    required this.last,
    required this.open,
    required this.low,
    required this.high,
    required this.volume,
    required this.change,
  });

  Item copyWith({
    String? bid,
    String? ask,
    String? last,
    String? open,
    String? low,
    String? high,
    String? volume,
    String? charge,
  }) {
    return Item(
      bid: bid ?? this.bid,
      ask: ask ?? this.ask,
      last: last ?? this.last,
      open: open ?? this.open,
      low: low ?? this.low,
      high: high ?? this.high,
      volume: volume ?? this.volume,
      change: charge ?? this.change,
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
      'vol': volume,
      'charge': change,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      bid: map['bid'] as String,
      ask: map['ask'] as String,
      last: map['last'] as String,
      open: map['open'] as String,
      low: map['low'] as String,
      high: map['high'] as String,
      volume: map['vol'] as String,
      change: map['change'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(bid: $bid, ask: $ask, last: $last, open: $open, low: $low, high: $high, volume: $volume, charge: $change)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.bid == bid &&
        other.ask == ask &&
        other.last == last &&
        other.open == open &&
        other.low == low &&
        other.high == high &&
        other.volume == volume &&
        other.change == change;
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
        change.hashCode;
  }
}
