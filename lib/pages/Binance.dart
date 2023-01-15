// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tether/coin%20details/binance_details.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/binance_api.dart';

class Binance extends StatefulWidget {
  const Binance({Key? key}) : super(key: key);

  @override
  State<Binance> createState() => _BinanceState();
}

class _BinanceState extends State<Binance> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/binance.json");

    var decodedData = jsonDecode(coinJson);
    // print(decodedData['ticker']);
    var data = decodedData;

    BinanceData.item =
        List.from(data).map((item) => Binanceitem.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //actions: [const Icon(Icons.share).px12()],
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "Binance",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: BinanceData.item.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: BinanceData.item[index].symbol.text.xl3.bold
                    .color(const Color.fromARGB(255, 0, 45, 58))
                    .make()
                    .p12(),
              ),
              onTap: () {
                // Item details = Product;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoinnameBinance(
                              name: BinanceData.item[index].symbol,
                              data: BinanceData.item[index],
                            )));
              },
            );
          }),
    );
  }
}
