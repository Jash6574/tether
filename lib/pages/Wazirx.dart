// ignore_for_file: file_names, unnecessary_const

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/wazirx_api.dart';
import '../coin details/wazirx_details.dart';

class Wazirx extends StatefulWidget {
  const Wazirx({Key? key}) : super(key: key);

  @override
  State<Wazirx> createState() => _WazirxState();
}

class _WazirxState extends State<Wazirx> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/wazirx.json");

    var decodedData = jsonDecode(coinJson);
    var data = decodedData;

    WazirxData.item =
        List.from(data).map((item) => Wazirxitem.fromMap(item)).toList();
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
          "Wazirx",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: WazirxData.item.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(5))),
                child: WazirxData.item[index].symbol.text.xl3.bold
                    .color(const Color.fromARGB(255, 0, 45, 58))
                    .make()
                    .p12(),
              ),
              onTap: () {
                // Item details = Product;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoinnameWazirx(
                              name: WazirxData.item[index].symbol,
                              data: WazirxData.item[index],
                            )));
              },
            );
          }),
    );
  }
}
