// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, unused_import, avoid_print
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/hotbit_api.dart';


class CoinnameHotbit extends StatefulWidget {
  final String name;
  final HOTBITitem data;
  const CoinnameHotbit({
    Key? key,
    required this.name,
    required this.data,
  }) : super(key: key);

  @override
  State<CoinnameHotbit> createState() => _CoinnameHotbitState();
}

class _CoinnameHotbitState extends State<CoinnameHotbit> {
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
                        leading: "Buy"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.buy.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Sell"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.sell.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Last"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.last.text.lg.make().px12(),
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
                        leading: "Open"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.open.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Close"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.close.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Low"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.low.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "High"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.high.text.lg.make().px12(),
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
                        trailing: widget.data.vol.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Base Volume"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: widget.data.base_volume.text.lg.make().px12(),
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
                        trailing:
                            widget.data.quote_volume.text.lg.make().px12(),
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
