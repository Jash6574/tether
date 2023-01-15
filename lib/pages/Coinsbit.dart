// ignore_for_file: file_names, unused_import, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/coinbit_api.dart';
import '../coin details/coinbit_details.dart';

class CoinsBit extends StatefulWidget {
  const CoinsBit({Key? key}) : super(key: key);

  @override
  State<CoinsBit> createState() => _CoinsBitState();
}

class _CoinsBitState extends State<CoinsBit> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/coinbit.json");

    var decodedData = jsonDecode(coinJson);
    var product = decodedData['result'].keys.toList();
    CoinsBitData.data = decodedData['result'];
    Product.item = product;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "CoinsBit",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: Product.item.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Product.item[index].text.xl3.bold
                    .color(Color.fromARGB(255, 0, 45, 58))
                    .make()
                    .p12(),
              ),
              onTap: () {
                // Item details = Product;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoinnameCoinsbit(
                              name: Product.item[index],
                            )));
              },
            );
          }),
    );
  }
}
