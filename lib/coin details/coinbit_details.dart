// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable, unused_import
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/coinbit_api.dart';

class CoinnameCoinsbit extends StatefulWidget {
  final String name;

  const CoinnameCoinsbit({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  State<CoinnameCoinsbit> createState() => _CoinnameCoinsbitState();
}

class _CoinnameCoinsbitState extends State<CoinnameCoinsbit> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() {
    var coindetails = CoinsBitData.data[widget.name]['ticker'];
    Coinbititem.item = Item.fromMap(coindetails);

    setState(() {});
  }

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
                        leading: "Bid"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: Coinbititem.item.bid.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Ask"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: Coinbititem.item.ask.text.lg.make().px12(),
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
                        trailing: Coinbititem.item.last.text.lg.make().px12(),
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
                        leading: "Open 24H"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: Coinbititem.item.open.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Low 24H"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: Coinbititem.item.low.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "High 24H"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: Coinbititem.item.high.text.lg.make().px12(),
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
                        leading: "Volume 24H"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: Coinbititem.item.volume.text.lg.make().px12(),
                      ),
                      ListTile(
                        leading: "Change"
                            .text
                            .bold
                            .xl2
                            .color(
                              const Color.fromARGB(255, 0, 45, 58),
                            )
                            .make()
                            .px12(),
                        trailing: "${Coinbititem.item.change} %"
                            .text
                            .lg
                            .make()
                            .px12(),
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
