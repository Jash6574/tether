// ignore_for_file: unnecessary_import, unused_import, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, unnecessary_new, sort_child_properties_last, unused_local_variable

import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tether/widgets/constant.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:rating_dialog/rating_dialog.dart';

import 'package:tether/widgets/market.dart';

import '../coin api/coinbit_api.dart';
import '../protfolio.dart/my_portfolio.dart';
import '../widgets/drawer.dart';

class Homepage extends StatefulWidget {
  final String name;
  const Homepage({Key? key, required this.name});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String lastRefreshed = "";
  var a = 123.12;
  @override
  void initState() {
    super.initState();
    _loadCounter();
    var b = a.toStringAsFixed(1);
    loadData();
  }

  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      lastRefreshed = (prefs.getString('refreshedValue') ?? "0");
    });
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 0));
    final coinJson = await rootBundle.loadString("assets/coinbit.json");

    var decodedData = jsonDecode(coinJson);
    var product = decodedData['result'].keys.toList();
    CoinsBitData.data = decodedData['result'];
    Product.item = product;

    var coindetails = CoinsBitData.data['USDC_USDT']['ticker'];
    Coinbititem.item = Item.fromMap(coindetails);
    // addStringToSF(Coinbititem.item.last);

    var coindetailsBtc = CoinsBitData.data['BTC_USDT']['ticker'];
    CoinbititemBTC.item = Item.fromMap(coindetailsBtc);
    var btcusdt = CoinbititemBTC.item.last;

    var coindetailsEth = CoinsBitData.data['ETH_USDT']['ticker'];
    CoinbititemETH.item = Item.fromMap(coindetailsEth);
    var ethusdt = CoinbititemBTC.item.last;

    setState(() {});
  }

  addStringToSF(String str) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('refreshedValue', str);
  }

  Future getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String? stringValue = prefs.getString('refreshedValue');
    return stringValue;
  }

  @override
  Widget build(BuildContext context) {
    // var usdtBtc = roundDouble(CoinbititemBTC.item.last,2);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: IconButton(
                  icon: Icon(Icons.share_outlined),
                  onPressed: () => _onShare(context)))
        ],
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "Tether",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 4, right: 4, top: 10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            color: Colors.white,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              // ignore: prefer_const_literals_to_create_immutables

                              children: <Widget>[
                                // ignore: prefer_const_constructors

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 0),
                                  child: ListTile(
                                    title: Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      child: Text("USDT",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: [
                                          // ignore: prefer_const_constructors
                                          Coinbititem
                                              .item.last.text.xl4.bold.black
                                              .make(),
                                          // ignore: prefer_const_constructors
                                          Text(
                                            'USD', textAlign: TextAlign.right,
                                            // ignore: prefer_const_constructors
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            elevation: 0,
                          ),
                        ),
                        decoration: new BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(50, 0, 45, 58),
                              offset: Offset(0, 0),
                              blurRadius: 10,
                              spreadRadius: 0,
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 70, bottom: 70),
                                  child: Column(
                                    children: [
                                      "USDT/1BTC"
                                          .text
                                          .align(TextAlign.center)
                                          .color(Colors.grey)
                                          .xl
                                          .bold
                                          .make(),
                                      CoinbititemBTC.item.last != ""
                                          ? double.parse(
                                                  CoinbititemBTC.item.last)
                                              .toStringAsFixed(5)
                                              .text
                                              .align(TextAlign.center)
                                              .xl2
                                              .bold
                                              .make()
                                              .py12()
                                          : "0"
                                              .text
                                              .align(TextAlign.center)
                                              .xl2
                                              .bold
                                              .make()
                                              .py12()
                                    ],
                                  ),
                                ),
                              ),
                              width: (MediaQuery.of(context).size.width) / 2,
                              decoration: new BoxDecoration(
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(50, 0, 45, 58),
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    spreadRadius: 0,
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
                            Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 70, bottom: 70),
                                  child: Column(
                                    children: [
                                      "USDT/1ETH"
                                          .text
                                          .align(TextAlign.center)
                                          .color(Colors.grey)
                                          .xl
                                          .bold
                                          .make(),
                                      CoinbititemBTC.item.last != ""
                                          ? double.parse(
                                                  CoinbititemETH.item.last)
                                              .toStringAsFixed(5)
                                              .text
                                              .align(TextAlign.center)
                                              .xl2
                                              .bold
                                              .make()
                                              .py12()
                                          : "0"
                                              .text
                                              .align(TextAlign.center)
                                              .xl2
                                              .bold
                                              .make()
                                              .py12(),
                                    ],
                                  ),
                                ),
                              ),
                              width: (MediaQuery.of(context).size.width) / 2,
                              decoration: new BoxDecoration(
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(50, 0, 45, 58),
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    spreadRadius: 0,
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            "Last Refreshed (USD)"
                                .text
                                .xl
                                .color(Colors.grey)
                                .bold
                                .make(),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              "Value"
                                  .text
                                  .align(TextAlign.center)
                                  .color(Colors.grey)
                                  .xl
                                  .bold
                                  .make()
                                  .py12(),
                              lastRefreshed.text
                                  .align(TextAlign.center)
                                  .xl2
                                  .bold
                                  .make(),
                            ],
                          ),
                          Column(
                            children: [
                              "Change"
                                  .text
                                  .align(TextAlign.center)
                                  .color(Colors.grey)
                                  .xl
                                  .bold
                                  .make()
                                  .py12(),
                              Coinbititem.item.change.text
                                  .align(TextAlign.center)
                                  .xl2
                                  .bold
                                  .make(),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: TextButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromARGB(
                                                    255, 0, 45, 58))),
                                    onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MarketPage()),
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4, bottom: 4),
                                      child: Text(
                                        "Market",
                                        textScaleFactor: 1.1,
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: TextButton(
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromARGB(
                                                    255, 0, 45, 58))),
                                    onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyProtfolio()),
                                        ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4, bottom: 4),
                                      child: Text(
                                        "My Portfolio",
                                        textScaleFactor: 1.1,
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
        "Tether(USDT) - \n\n${Coinbititem.item.last} USD \n\n${CoinbititemBTC.item.last}/1BTC \n\n${CoinbititemETH.item.last}/1ETH \n\nGet Tether USDT Price Easy & Quick. \nDownload App Now \n${AppUrl.shareUrl()}",
        subject: "",
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}
