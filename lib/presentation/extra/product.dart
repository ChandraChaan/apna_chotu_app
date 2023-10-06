// import 'package:flutter/material.dart';
//
// class ProfileScreenTest extends StatefulWidget {
//   ProfileScreenTest({Key? key}) : super(key: key);
//
//   @override
//   State<ProfileScreenTest> createState() => _ProfileScreenTestState();
// }
//
// class _ProfileScreenTestState extends State<ProfileScreenTest> {
//   final ExpansionTileController controller = ExpansionTileController();
//   TextEditingController nameController = TextEditingController(text: 'Vinay Khatri');
//   TextEditingController phoneController =
//   TextEditingController(text: '8121213346');
//   TextEditingController emailController =
//   TextEditingController(text: 'vishw.vinay@gmail.com');
//   TextEditingController cityController = TextEditingController(text: 'Hyderabad,TS');
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               // ... (previous code)
//
//               // Editable Name Field
//               ListTile(
//                 title: Text('Name'),
//                 subtitle: TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     hintText: 'Enter your name',
//                   ),
//                 ),
//               ),
//
//               // Editable Phone Field
//               ListTile(
//                 title: Text('Mobile'),
//                 subtitle: TextField(
//                   controller: phoneController,
//                   decoration: InputDecoration(
//                     hintText: 'Enter your phone number',
//                   ),
//                 ),
//               ),
//
//               // Editable Email Field
//               ListTile(
//                 title: Text('Email Address'),
//                 subtitle: TextField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                     hintText: 'Enter your email address',
//                   ),
//                 ),
//               ),
//
//               // Editable City Field
//               ListTile(
//                 title: Text('City'),
//                 subtitle: TextField(
//                   controller: cityController,
//                   decoration: InputDecoration(
//                     hintText: 'Enter your city',
//                   ),
//                 ),
//               ),
//
//               SizedBox(height: 5),
//
//               // ... (remaining code)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
