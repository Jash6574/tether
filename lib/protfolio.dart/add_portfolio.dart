// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

// class AddProtfolio extends StatefulWidget {
//   const AddProtfolio({Key? key}) : super(key: key);

//   @override
//   State<AddProtfolio> createState() => _AddProtfolioState();
// }

// class _AddProtfolioState extends State<AddProtfolio> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [const Icon(Icons.share).px12()],
//         backgroundColor: const Color.fromARGB(255, 0, 45, 58),
//         elevation: 0,
//         title: const Text(
//           "Add Portfolio",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Center(
//               child: Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             left: 64, right: 64, top: 64, bottom: 48),
//                         child: "Add USDT Quantity"
//                             .text
//                             .bold
//                             .xl3
//                             .color(
//                               const Color.fromARGB(255, 0, 45, 58),
//                             )
//                             .make(),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             left: 16, right: 16, bottom: 12),
//                         child: TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: "USDT Quantity",
//                             labelText: "USDT",
//                           ),
//                           keyboardType: TextInputType.number,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 100),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Expanded(
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 20),
//                                 child: TextButton(
//                                   style: ButtonStyle(
//                                       foregroundColor:
//                                           MaterialStateProperty.all<Color>(
//                                               Colors.white),
//                                       backgroundColor:
//                                           MaterialStateProperty.all<Color>(
//                                               const Color.fromARGB(
//                                                   255, 0, 45, 58))),
//                                   onPressed: () {},
//                                   child: const Text("Save"),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
