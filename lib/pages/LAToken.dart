// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/latoken_api.dart';
import '../coin details/latoken_details.dart';

class LAToken extends StatefulWidget {
  const LAToken({Key? key}) : super(key: key);

  @override
  State<LAToken> createState() => _LATokenState();
}

class _LATokenState extends State<LAToken> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/latoken.json");

    var decodedData = jsonDecode(coinJson);
    // print(decodedData['ticker']);
    var data = decodedData;
    LATokenData.item =
        List.from(data).map((item) => LATokenitem.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [const Icon(Icons.share).px12()],
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "LAToken",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: LATokenData.item.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: LATokenData.item[index].symbol.text.xl3.bold
                    .color(const Color.fromARGB(255, 0, 45, 58))
                    .make()
                    .p12(),
              ),
              onTap: () {
                // Item details = Product;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoinnameLAToken(
                              name: LATokenData.item[index].symbol,
                              data: LATokenData.item[index],
                            )));
              },
            );
          }),
    );
  }
}
