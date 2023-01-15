// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../pages/Binance.dart';
import '../pages/Wazirx.dart';
import '../pages/Coinsbit.dart';
import '../pages/HOTBIT.dart';
import '../pages/HitBTC.dart';
import '../pages/LAToken.dart';
import '../pages/LBank.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        backgroundColor: const Color.fromARGB(255, 0, 45, 58),
        elevation: 0,
        title: const Text(
          "Market",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        // color: Color.fromARGB(255, 0, 45, 58),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ListTile(
                                title: "WazirX".text.xl2.bold.make(),
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('assets/wazirx.png',
                                      fit: BoxFit.cover),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Wazirx())),
                              ),
                            ),
                          ],
                        ),

                        // ignore: sort_child_properties_last
                        // child: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(5))),
                        //     color: Color.fromRGBO(235, 254, 254, 1),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       // ignore: prefer_const_literals_to_create_immutables

                        //       children: <Widget>[
                        //         // ignore: prefer_const_constructors

                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 1, vertical: 0),
                        //           child: ListTile(
                        //               title: Padding(
                        //                 padding: EdgeInsets.symmetric(
                        //                   vertical: 10,
                        //                 ),
                        //                 child: Text("Wazirx",
                        //                     textAlign: TextAlign.left,
                        //                     style: TextStyle(
                        //                         color: Colors.black,
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.bold)),
                        //               ),
                        //               onTap: () => Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => Wazirx())),
                        //               subtitle: null),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // ignore: unnecessary_new
                        // decoration: new BoxDecoration(
                        //   // ignore: prefer_const_literals_to_create_immutables
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Color.fromARGB(50, 0, 45, 58),
                        //       offset: Offset(10, 10),
                        //       blurRadius: 20,
                        //       spreadRadius: 5,
                        //     ),
                        //     BoxShadow(
                        //       color: Colors.transparent,
                        //       offset: Offset(0, 0),
                        //       blurRadius: 0,
                        //       spreadRadius: 0,
                        //     ),
                        //   ],
                        // ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ListTile(
                                title: "Coinsbit".text.xl2.bold.make(),
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('assets/coinsbit.png',
                                      fit: BoxFit.cover),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoinsBit())),
                              ),
                            ),
                          ],
                        ),
                        // ignore: sort_child_properties_last
                        // child: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(5))),
                        //     color: Color.fromRGBO(235, 254, 254, 1),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       // ignore: prefer_const_literals_to_create_immutables

                        //       children: <Widget>[
                        //         // ignore: prefer_const_constructors

                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 1, vertical: 0),
                        //           child: ListTile(
                        //               title: Padding(
                        //                 padding: EdgeInsets.symmetric(
                        //                   vertical: 10,
                        //                 ),
                        //                 child: Text("Coinsbit",
                        //                     textAlign: TextAlign.left,
                        //                     style: TextStyle(
                        //                         color: Colors.black,
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.bold)),
                        //               ),
                        //               onTap: () => Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) =>
                        //                           CoinsBit())),
                        //               subtitle: null),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // ignore: unnecessary_new
                        // decoration: new BoxDecoration(
                        //   // ignore: prefer_const_literals_to_create_immutables
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Color.fromARGB(50, 0, 45, 58),
                        //       offset: Offset(10, 10),
                        //       blurRadius: 20,
                        //       spreadRadius: 5,
                        //     ),
                        //     BoxShadow(
                        //       color: Colors.transparent,
                        //       offset: Offset(0, 0),
                        //       blurRadius: 0,
                        //       spreadRadius: 0,
                        //     ),
                        //   ],
                        // ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ListTile(
                                title: "HOTBIT".text.xl2.bold.make(),
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('assets/hotbit.png',
                                      fit: BoxFit.cover),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HOTBIT())),
                              ),
                            ),
                          ],
                        ),
                        // ignore: sort_child_properties_last
                        // child: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(5))),
                        //     color: Color.fromRGBO(235, 254, 254, 1),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       // ignore: prefer_const_literals_to_create_immutables

                        //       children: <Widget>[
                        //         // ignore: prefer_const_constructors

                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 1, vertical: 0),
                        //           child: ListTile(
                        //               title: Padding(
                        //                 padding: EdgeInsets.symmetric(
                        //                   vertical: 10,
                        //                 ),
                        //                 child: Text("HOTBIT",
                        //                     textAlign: TextAlign.left,
                        //                     style: TextStyle(
                        //                         color: Colors.black,
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.bold)),
                        //               ),
                        //               onTap: () => Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => HOTBIT())),
                        //               subtitle: null),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // // ignore: unnecessary_new
                        // decoration: new BoxDecoration(
                        //   // ignore: prefer_const_literals_to_create_immutables
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Color.fromARGB(50, 0, 45, 58),
                        //       offset: Offset(10, 10),
                        //       blurRadius: 20,
                        //       spreadRadius: 5,
                        //     ),
                        //     BoxShadow(
                        //       color: Colors.transparent,
                        //       offset: Offset(0, 0),
                        //       blurRadius: 0,
                        //       spreadRadius: 0,
                        //     ),
                        //   ],
                        // ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ListTile(
                                title: "LAToken".text.xl2.bold.make(),
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('assets/latoken.png',
                                      fit: BoxFit.cover),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LAToken())),
                              ),
                            ),
                          ],
                        ),
                        // ignore: sort_child_properties_last
                        // child: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(5))),
                        //     color: Color.fromRGBO(235, 254, 254, 1),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       // ignore: prefer_const_literals_to_create_immutables

                        //       children: <Widget>[
                        //         // ignore: prefer_const_constructors

                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 1, vertical: 0),
                        //           child: ListTile(
                        //               title: Padding(
                        //                 padding: EdgeInsets.symmetric(
                        //                   vertical: 10,
                        //                 ),
                        //                 child: Text("LAToken",
                        //                     textAlign: TextAlign.left,
                        //                     style: TextStyle(
                        //                         color: Colors.black,
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.bold)),
                        //               ),
                        //               onTap: () => Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => LAToken())),
                        //               subtitle: null),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // // ignore: unnecessary_new
                        // decoration: new BoxDecoration(
                        //   // ignore: prefer_const_literals_to_create_immutables
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Color.fromARGB(50, 0, 45, 58),
                        //       offset: Offset(10, 10),
                        //       blurRadius: 20,
                        //       spreadRadius: 5,
                        //     ),
                        //     BoxShadow(
                        //       color: Colors.transparent,
                        //       offset: Offset(0, 0),
                        //       blurRadius: 0,
                        //       spreadRadius: 0,
                        //     ),
                        //   ],
                        // ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ListTile(
                                title: "LBank".text.xl2.bold.make(),
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('assets/lbank.png',
                                      fit: BoxFit.cover),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LBank())),
                              ),
                            ),
                          ],
                        ),
                        // ignore: sort_child_properties_last
                        // child: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(5))),
                        //     color: Color.fromRGBO(235, 254, 254, 1),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       // ignore: prefer_const_literals_to_create_immutables

                        //       children: <Widget>[
                        //         // ignore: prefer_const_constructors

                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 1, vertical: 0),
                        //           child: ListTile(
                        //               title: Padding(
                        //                 padding: EdgeInsets.symmetric(
                        //                   vertical: 10,
                        //                 ),
                        //                 child: Text("LBank",
                        //                     textAlign: TextAlign.left,
                        //                     style: TextStyle(
                        //                         color: Colors.black,
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.bold)),
                        //               ),
                        //               onTap: () => Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => LBank())),
                        //               subtitle: null),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // // ignore: unnecessary_new
                        // decoration: new BoxDecoration(
                        //   // ignore: prefer_const_literals_to_create_immutables
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Color.fromARGB(50, 0, 45, 58),
                        //       offset: Offset(10, 10),
                        //       blurRadius: 20,
                        //       spreadRadius: 5,
                        //     ),
                        //     BoxShadow(
                        //       color: Colors.transparent,
                        //       offset: Offset(0, 0),
                        //       blurRadius: 0,
                        //       spreadRadius: 0,
                        //     ),
                        //   ],
                        // ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ListTile(
                                title: "Binance".text.xl2.bold.make(),
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('assets/binance.png',
                                      fit: BoxFit.cover),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Binance())),
                              ),
                            ),
                          ],
                        ),
                        // ignore: sort_child_properties_last
                        // child: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(5))),
                        //     color: Color.fromRGBO(235, 254, 254, 1),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       // ignore: prefer_const_literals_to_create_immutables

                        //       children: <Widget>[
                        //         // ignore: prefer_const_constructors

                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 1, vertical: 0),
                        //           child: ListTile(
                        //               title: Padding(
                        //                 padding: EdgeInsets.symmetric(
                        //                   vertical: 10,
                        //                 ),
                        //                 child: Text("Binance",
                        //                     textAlign: TextAlign.left,
                        //                     style: TextStyle(
                        //                         color: Colors.black,
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.bold)),
                        //               ),
                        //               onTap: () => Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => Binance())),
                        //               subtitle: null),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // // ignore: unnecessary_new
                        // decoration: new BoxDecoration(
                        //   // ignore: prefer_const_literals_to_create_immutables
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Color.fromARGB(50, 0, 45, 58),
                        //       offset: Offset(10, 10),
                        //       blurRadius: 20,
                        //       spreadRadius: 5,
                        //     ),
                        //     BoxShadow(
                        //       color: Colors.transparent,
                        //       offset: Offset(0, 0),
                        //       blurRadius: 0,
                        //       spreadRadius: 0,
                        //     ),
                        //   ],
                        // ),
                      ),

                      // ignore: prefer_const_constructors

                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: ListTile(
                                title: "HitBTC".text.xl2.bold.make(),
                                leading: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minWidth: 44,
                                    minHeight: 44,
                                    maxWidth: 44,
                                    maxHeight: 44,
                                  ),
                                  child: Image.asset('assets/hitbtc.png',
                                      fit: BoxFit.cover),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HitBTC())),
                              ),
                            ),
                          ],
                        ),
                        // ignore: sort_child_properties_last
                        // child: Padding(
                        //   padding: const EdgeInsets.all(4.0),
                        //   child: Card(
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius:
                        //             BorderRadius.all(Radius.circular(5))),
                        //     color: Color.fromRGBO(235, 254, 254, 1),
                        //     child: Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       // ignore: prefer_const_literals_to_create_immutables

                        //       children: <Widget>[
                        //         // ignore: prefer_const_constructors

                        //         Padding(
                        //           padding: const EdgeInsets.symmetric(
                        //               horizontal: 1, vertical: 0),
                        //           child: ListTile(
                        //               title: Padding(
                        //                 padding: EdgeInsets.symmetric(
                        //                   vertical: 10,
                        //                 ),
                        //                 child: Text("HitBTC",
                        //                     textAlign: TextAlign.left,
                        //                     style: TextStyle(
                        //                         color: Colors.black,
                        //                         fontSize: 30,
                        //                         fontWeight: FontWeight.bold)),
                        //               ),
                        //               onTap: () => Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => HitBTC())),
                        //               subtitle: null),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // // ignore: unnecessary_new
                        // decoration: new BoxDecoration(
                        //   // ignore: prefer_const_literals_to_create_immutables
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: Color.fromARGB(50, 0, 45, 58),
                        //       offset: Offset(10, 10),
                        //       blurRadius: 20,
                        //       spreadRadius: 5,
                        //     ),
                        //     BoxShadow(
                        //       color: Colors.transparent,
                        //       offset: Offset(0, 0),
                        //       blurRadius: 0,
                        //       spreadRadius: 0,
                        //     ),
                        //   ],
                        // ),
                      ),
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
}
