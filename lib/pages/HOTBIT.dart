// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/hotbit_api.dart';
import '../coin details/hotbit_details.dart';

class HOTBIT extends StatefulWidget {
  const HOTBIT({Key? key}) : super(key: key);

  @override
  State<HOTBIT> createState() => _HOTBITState();
}

class _HOTBITState extends State<HOTBIT> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/hotbit.json");

    var decodedData = jsonDecode(coinJson);
    // print(decodedData['ticker']);
    var data = decodedData['ticker'];

    HOTBITData.item =
        List.from(data).map((item) => HOTBITitem.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "HOTBIT",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: HOTBITData.item.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: HOTBITData.item[index].symbol.text.xl3.bold
                    .color(const Color.fromARGB(255, 0, 45, 58))
                    .make()
                    .p12(),
              ),
              onTap: () {
                // Item details = Product;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CoinnameHotbit(
                              name: HOTBITData.item[index].symbol,
                              data: HOTBITData.item[index],
                            )));
              },
            );
          }),
    );
  }
}
