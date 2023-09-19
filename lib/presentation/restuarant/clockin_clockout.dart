// import 'package:apna_chotu_app/common/app_text.dart';
// import 'package:apna_chotu_app/utils/rounded_button.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class BottomSheet extends StatelessWidget {
//   const BottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     int quantity = 1;
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Container(
//             height: 346,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10))),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         height: 37,
//                         width: 37,
//                         child: Image.asset('assets/images/image_290.png'),
//                       ),
//                       SizedBox(width: 7),
//                       CommonText(
//                         'Chicken Biryani',
//                         style: TextStyle(
//                             fontSize: 11,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.deepOrange),
//                       ),
//                       SizedBox(width: 199),
//                       Row(
//                         children: [
//                           InkWell(
//                             onTap: () {},
//                             child:
//                             Image.asset('assets/images/vector_right.png'),
//                           ),
//                           SizedBox(width: 5),
//                           InkWell(
//                             onTap: () {
//                               Get.back();
//                             },
//                             child: Icon(
//                               Icons.cancel,
//                               color: Colors.deepOrange,
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                   Divider(thickness: 2),
//                   CommonText(
//                     'Quantity',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                   ),
//                   SizedBox(height: 6),
//                   Row(
//                     children: [
//                       Icon(Icons.radio_button_off),
//                       SizedBox(width: 5),
//                       CommonText('Single(serve 1)'),
//                       SizedBox(width: 200),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.currency_rupee,
//                             size: 15,
//                           ),
//                           CommonText(
//                             '180',
//                             style: TextStyle(fontSize: 15),
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(height: 6),
//                   Row(
//                     children: [
//                       Icon(Icons.radio_button_off),
//                       SizedBox(width: 5),
//                       CommonText('Single(serve 2)'),
//                       SizedBox(width: 200),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.currency_rupee,
//                             size: 15,
//                           ),
//                           CommonText(
//                             '299',
//                             style: TextStyle(fontSize: 15),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Divider(thickness: 2),
//                   CommonText(
//                     'Customise as per your taste',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   CommonText(
//                     'biryani Addon(1/3)',
//                     style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: Row(
//                       children: [
//                         Icon(Icons.check_box),
//                         CommonText(
//                           'Raitha',
//                           style: TextStyle(fontSize: 11),
//                         ),
//                         SizedBox(width: 266),
//                         Row(
//                           children: [
//                             Icon(Icons.currency_rupee, size: 15),
//                             CommonText(
//                               '25',
//                               style: TextStyle(fontSize: 15),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: Row(
//                       children: [
//                         Icon(Icons.check_box),
//                         CommonText(
//                           'Salan',
//                           style: TextStyle(fontSize: 11),
//                         ),
//                         SizedBox(width: 269),
//                         Row(
//                           children: [
//                             Icon(Icons.currency_rupee, size: 15),
//                             CommonText(
//                               '25',
//                               style: TextStyle(fontSize: 15),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 5),
//                     child: Row(
//                       children: [
//                         Icon(Icons.check_box),
//                         CommonText(
//                           'Double Ka Meetha',
//                           style: TextStyle(fontSize: 11),
//                         ),
//                         SizedBox(width: 203),
//                         Row(
//                           children: [
//                             Icon(Icons.currency_rupee, size: 15),
//                             CommonText(
//                               '45',
//                               style: TextStyle(fontSize: 15),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 40,
//                         width: 120,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(15),
//                             ),
//                             border: Border.all(color: Colors.deepOrange),
//                             color: Color(0xFFFFDFC6)),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.remove),
//                               onPressed: () {},
//                             ),
//                             CommonText('$quantity'),
//                             IconButton(
//                               icon: Icon(Icons.add),
//                               onPressed: () {},
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 5),
//                       Container(
//                         height: 40,
//                         width: 167,
//                         child: RoundedButton(
//                           onPressed: () {},
//                           name: '',
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               InkWell(
//                                 onTap: () {
//
//                                 },
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     CommonText(
//                                       '2 items',
//                                       style: TextStyle(fontSize: 9),
//                                     ),
//                                     Icon(
//                                       Icons.currency_rupee,
//                                       size: 9,
//                                     ),
//                                     CommonText(
//                                       '255',
//                                       style: TextStyle(fontSize: 9),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               CommonText(
//                                 'Check Out',
//                                 style: TextStyle(
//                                     fontSize: 16, fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
