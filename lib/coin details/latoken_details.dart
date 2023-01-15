// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, unused_import, avoid_print
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/latoken_api.dart';

class CoinnameLAToken extends StatefulWidget {
  final String name;
  final LATokenitem data;
  const CoinnameLAToken({
    Key? key,
    required this.name,
    required this.data,
  }) : super(key: key);

  @override
  State<CoinnameLAToken> createState() => _CoinnameLATokenState();
}

class _CoinnameLATokenState extends State<CoinnameLAToken> {
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
                          leading: "Best Bid"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: widget.data.bestBid.text.lg.make().px12(),
                        ),
                        ListTile(
                          leading: "Best Ask"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: widget.data.bestAsk.text.lg.make().px12(),
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
                          trailing: widget.data.lastPrice.text.lg.make().px12(),
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
                          leading: "Best Bid Quantity"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing:
                              widget.data.bestBidQuantity.text.lg.make().px12(),
                        ),
                        ListTile(
                          leading: "Best Ask Quantity"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing:
                              widget.data.bestAskQuantity.text.lg.make().px12(),
                        ),
                        ListTile(
                          leading: "Last Quantity"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing:
                              widget.data.lastQuantity.text.lg.make().px12(),
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
                          leading: "Amount 7d"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: widget.data.amount7d.text.lg.make().px12(),
                        ),
                        ListTile(
                          leading: "Change 7d"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: widget.data.change7d.text.lg.make().px12(),
                        ),
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
                          trailing: widget.data.volume7d.text.lg.make().px12(),
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
                          leading: "Amount 24h"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: widget.data.amount24h.text.lg.make().px12(),
                        ),
                        ListTile(
                          leading: "Change 24h"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: widget.data.change24h.text.lg.make().px12(),
                        ),
                        ListTile(
                          leading: "Volume 24h"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: widget.data.volume24h.text.lg.make().px12(),
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
