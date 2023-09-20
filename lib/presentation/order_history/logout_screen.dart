import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_text.dart';

// class LogoutScreen extends StatelessWidget {
//   const LogoutScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 35),
//         child: AlertDialog(
//           title: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 375,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(20)),
//                     color: Colors.white),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 17),
//                     Image(image: AssetImage('assets/images/group_3286.png')),
//                     SizedBox(height: 17),
//                     CommonText(
//                       'Comeback Soon!',
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.deepOrange),
//                     ),
//                     Center(
//                       child: CommonText(
//                         'Are you sure you want to Logout?',
//                         style: TextStyle(fontSize: 10),
//                       ),
//                     ),
//                     SizedBox(height: 17),
//                     Center(
//                       child: Container(
//                         height: 40,
//                         width: 210,
//                         child:
//                             RoundedButton(onPressed: () {}, name: 'Yes, Logout'),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     TextButton(
//                       onPressed: () {},
//                       child: CommonText(
//                         'Cancel',
//                         style: TextStyle(color: Colors.deepOrange, fontSize: 14),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// class MyAppDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dialog Box Example'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AlertDialog(
//                     title: Text('Dialog Title'),
//                     content: Text('This is a Flutter dialog box.'),
//                     actions: <Widget>[
//                       TextButton(
//                         onPressed: () {
//                           Navigator.of(context).pop(); // Close the dialog
//                         },
//                         child: Text('Close'),
//                       ),
//                     ],
//                   );
//                 },
//               );
//             },
//             child: Text('Show Dialog'),
//           ),
//         ),
//       ),
//     );
//   }
// }
