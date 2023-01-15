// ignore_for_file: file_names, unused_import, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/lbank_api.dart';
import '../coin details/lbank_details.dart';

class LBank extends StatefulWidget {
  const LBank({Key? key}) : super(key: key);

  @override
  State<LBank> createState() => _LBankState();
}

class _LBankState extends State<LBank> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/lbank.json");

    var decodedData = jsonDecode(coinJson);
    var data = decodedData;

    LBankData.item =
        List.from(data['data']).map((item) => LBankitem.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "LBank",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: LBankData.item.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: LBankData.item[index].symbol.text.xl3.bold
                    .color(Color.fromARGB(255, 0, 45, 58))
                    .make()
                    .p12(),
              ),
              onTap: () {
                // Item details = Product;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoinnameLBank(
                              name: LBankData.item[index].symbol,
                              data: LBankData.item[index],
                            )));
              },
            );
          }),
    );
  }
}
