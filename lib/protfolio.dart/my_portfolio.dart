// ignore_for_file: avoid_unnecessary_containers, empty_constructor_bodies, unused_element, prefer_typing_uninitialized_variables, unused_label, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:share_plus/share_plus.dart';
import 'package:velocity_x/velocity_x.dart';

import '../coin api/coinbit_api.dart';
import '../widgets/constant.dart';
// import 'add_portfolio.dart';

class MyProtfolio extends StatefulWidget {
  const MyProtfolio({Key? key}) : super(key: key);

  @override
  State<MyProtfolio> createState() => _MyProtfolioState();
}

class _MyProtfolioState extends State<MyProtfolio> {
  String quantity = "1";
  TextEditingController val = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          "My Portfolio",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 36, right: 36, bottom: 18, top: 36),
                        child: TextFormField(
                          controller: val,
                          decoration: const InputDecoration(
                            hintText: "USDT Quantity",
                            labelText: "USDT",
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            setState(() {
                              quantity = value;
                              Validator:
                              (value) {
                                if (value == null || value.isEmpty) {
                                  return 0;
                                }
                                return 0;
                              };
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListTile(
                            leading: "USDT"
                                .text
                                .bold
                                .xl2
                                .color(
                                  const Color.fromARGB(255, 0, 45, 58),
                                )
                                .make()
                                .px12(),
                            trailing: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: (!val.text.isEmptyOrNull)
                                  ? Text("${(double.parse(quantity))}")
                                  : const Text("0"),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListTile(
                          leading: "USD"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: (!val.text.isEmptyOrNull)
                                ? Text(
                                    "${(double.parse(quantity)) * (double.parse(Coinbititem.item.last))}")
                                : const Text("0"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListTile(
                            leading: "BTC"
                                .text
                                .bold
                                .xl2
                                .color(
                                  const Color.fromARGB(255, 0, 45, 58),
                                )
                                .make()
                                .px12(),
                            trailing:
                                //       CoinbititemBTC.item.last.text.lg.make().px12(),
                                // ),
                                Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: (!val.text.isEmptyOrNull)
                                  ? Text(
                                      "${(double.parse(quantity)) * (double.parse(CoinbititemBTC.item.last))}")
                                  : const Text("0"),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListTile(
                          leading: "ETH"
                              .text
                              .bold
                              .xl2
                              .color(
                                const Color.fromARGB(255, 0, 45, 58),
                              )
                              .make()
                              .px12(),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: (!val.text.isEmptyOrNull)
                                ? Text(
                                    "${(double.parse(quantity)) * (double.parse(CoinbititemETH.item.last))}")
                                : const Text("0"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // children: [
                          //   Expanded(
                          //     child: Padding(
                          //       padding:
                          //           const EdgeInsets.symmetric(vertical: 20),
                          //       child: TextButton(
                          //         style: ButtonStyle(
                          //             foregroundColor:
                          //                 MaterialStateProperty.all<Color>(
                          //                     Colors.white),
                          //             backgroundColor:
                          //                 MaterialStateProperty.all<Color>(
                          //                     Color.fromARGB(255, 0, 45, 58))),
                          //         onPressed: () => Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //               builder: (context) => ()),
                          //         ),
                          //         child: Text(
                          //           "Add Portfolio",
                          //           textScaleFactor: 1.2,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
        "Tether(USDT) - \n\n${Coinbititem.item.last} USD \n\n${(double.parse(quantity))} USDT \n\n${(double.parse(quantity)) * (double.parse(Coinbititem.item.last))} BTC \n\n${(double.parse(quantity)) * (double.parse(CoinbititemBTC.item.last))} BTC \n\n${(double.parse(quantity)) * (double.parse(CoinbititemETH.item.last))} ETH\n\nGet Tether USDT Price Easy & Quick. \nDownload App Now \n${AppUrl.shareUrl()}",
        subject: "",
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}

