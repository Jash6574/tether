// ignore_for_file: file_names, avoid_print, prefer_const_constructors, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:tether/coin%20details/hitbtc_details.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/hitbtc_api.dart';

class HitBTC extends StatefulWidget {
  const HitBTC({Key? key}) : super(key: key);

  @override
  State<HitBTC> createState() => _HitBTCState();
}

class _HitBTCState extends State<HitBTC> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/hitbtc.json");
    var decodedData = jsonDecode(coinJson);

    HitBTCData.item =
        List.from(decodedData).map((e) => HitBTCitem.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "HitBTC",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: HitBTCData.item.length,
          itemBuilder: (context, index) {
            print(HitBTCData.item);
            return InkWell(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: HitBTCData.item[index].symbol!.text.xl3.bold
                    .color(Color.fromARGB(255, 0, 45, 58))
                    .make()
                    .p12(),
              ),
              onTap: () {
                // Item details = Product;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoinnameHitBTC(
                              name: HitBTCData.item[index].symbol!,
                              data: HitBTCData.item[index],
                            )));
              },
            );
          }),
    );
  }
}
