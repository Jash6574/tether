// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, unused_import, avoid_print
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/wazirx_api.dart';

class CoinnameWazirx extends StatefulWidget {
  final String name;
  final Wazirxitem data;
  const CoinnameWazirx({
    Key? key,
    required this.name,
    required this.data,
  }) : super(key: key);

  @override
  State<CoinnameWazirx> createState() => _CoinnameWazirxState();
}

class _CoinnameWazirxState extends State<CoinnameWazirx> {
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
                        leading: "Base Asset"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.baseAsset.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Quote Asset"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.quoteAsset.text.lg.make().px12(),
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
                        leading: "Bid Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.bidPrice.text.lg.make().px12(),
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
                        trailing: widget.data.askPrice.text.lg.make().px12(),
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
                        leading: "Open Price"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.openPrice.text.lg.make().px12(),
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
                        trailing: widget.data.highPrice.text.lg.make().px12(),
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
                        trailing: widget.data.lowPrice.text.lg.make().px12(),
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
                        trailing: widget.data.volume.text.lg.make().px12(),
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
