// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, unused_import, avoid_print, unrelated_type_equality_checks
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/binance_api.dart';

class CoinnameBinance extends StatefulWidget {
  final String name;
  final Binanceitem data;
  const CoinnameBinance({
    Key? key,
    required this.name,
    required this.data,
  }) : super(key: key);

  @override
  State<CoinnameBinance> createState() => _CoinnameBinanceState();
}

class _CoinnameBinanceState extends State<CoinnameBinance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //actions: [const Icon(Icons.share).px12()],
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: widget.name.text.white.make(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Color.fromARGB(255, 212, 251, 255),
                  child: Column(
                    children: [
                      ListTile(
                        leading: "Bid Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.bidPrice) != ""
                            ? double.parse(widget.data.bidPrice)
                                .toStringAsFixed(5)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Ask Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.askPrice) != ""
                            ? double.parse(widget.data.askPrice)
                                .toStringAsFixed(5)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Last Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.lastPrice) != ""
                            ? double.parse(widget.data.lastPrice)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Bid Qty"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.bidQty) != ""
                            ? double.parse(widget.data.bidQty)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Ask Qty"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.askQty) != ""
                            ? double.parse(widget.data.askQty)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Last Qty"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.lastQty) != ""
                            ? double.parse(widget.data.lastQty)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                    ],
                  ),
                ),
                // ignore: unnecessary_new
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 45, 58),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Colors.transparent,
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Color.fromARGB(255, 212, 251, 255),
                  child: Column(
                    children: [
                      ListTile(
                        leading: "Open Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.openPrice) != ""
                            ? double.parse(widget.data.openPrice)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "High Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.highPrice) != ""
                            ? double.parse(widget.data.highPrice)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Low Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.lowPrice) != ""
                            ? double.parse(widget.data.lowPrice)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                    ],
                  ),
                ),
                // ignore: unnecessary_new
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 45, 58),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Colors.transparent,
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Color.fromARGB(255, 212, 251, 255),
                  child: Column(
                    children: [
                      ListTile(
                        leading: "Volume"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.volume) != ""
                            ? double.parse(widget.data.volume)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Quote Volume"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.quoteVolume) != ""
                            ? double.parse(widget.data.quoteVolume)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                    ],
                  ),
                ),
                // ignore: unnecessary_new
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 45, 58),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Colors.transparent,
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  // color: Color.fromARGB(255, 212, 251, 255),
                  child: Column(
                    children: [
                      ListTile(
                        leading: "Price Change"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.priceChange) != ""
                            ? double.parse(widget.data.priceChange)
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Price Change %"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing:
                            double.parse(widget.data.priceChangePercent) != ""
                                ? double.parse(widget.data.priceChangePercent)
                                    .text
                                    .lg
                                    .make()
                                    .px12()
                                : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Weight Average Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing:
                            double.parse(widget.data.weightedAvgPrice) != ""
                                ? double.parse(widget.data.weightedAvgPrice)
                                    .text
                                    .lg
                                    .make()
                                    .px12()
                                : "0".text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Previous Close Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: double.parse(widget.data.prevClosePrice) != ""
                            ? double.parse(widget.data.prevClosePrice
                            )
                                .text
                                .lg
                                .make()
                                .px12()
                            : "0".text.lg.make().px12(),
                      ),
                    ],
                  ),
                ),
                // ignore: unnecessary_new
                decoration: new BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 0, 45, 58),
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Colors.transparent,
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
