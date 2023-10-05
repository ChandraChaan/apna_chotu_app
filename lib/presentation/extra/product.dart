// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   bool isEditing = false;
//   bool isAdding = false;
//
//   // Define TextEditingController for each editable field
//   TextEditingController nameController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController cityController = TextEditingController();
//
//   List<String> names = ['vinay Khatri'];
//   List<String> mobiles = ['8121213346'];
//   List<String> emails = ['vishw.vinay@gmail.com'];
//   List<String> cities = ['Hyderabad,TS'];
//
//   @override
//   void dispose() {
//     // Dispose of controllers when the widget is disposed
//     nameController.dispose();
//     mobileController.dispose();
//     emailController.dispose();
//     cityController.dispose();
//     super.dispose();
//   }
//
//   void toggleEditing() {
//     setState(() {
//       isEditing = !isEditing;
//     });
//   }
//
//   void toggleAdding() {
//     setState(() {
//       isAdding = !isAdding;
//     });
//   }
//
//   void saveChanges() {
//     // Save the changes made by the user here
//     // You can access the updated values using nameController.text, mobileController.text, etc.
//     names[0] = nameController.text;
//     mobiles[0] = mobileController.text;
//     emails[0] = emailController.text;
//     cities[0] = cityController.text;
//     toggleEditing();
//   }
//
//   void addNewProfile() {
//     // Add a new profile with the entered values
//     names.add(nameController.text);
//     mobiles.add(mobileController.text);
//     emails.add(emailController.text);
//     cities.add(cityController.text);
//     toggleAdding();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Container(
//               child: Image.asset('assets/images/vector.png'),
//             ),
//             SizedBox(width: 5),
//             CommonText(
//               'My Profile',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12,
//               ),
//             ),
//             SizedBox(width: 240),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 InkWell(
//                   child: Icon(
//                     Icons.edit,
//                     color: Colors.grey,
//                   ),
//                   onTap: toggleEditing,
//                 ),
//                 isEditing
//                     ? Icon(
//                   Icons.expand_less,
//                   color: Colors.grey,
//                 )
//                     : InkWell(
//                   child: Icon(
//                     Icons.add,
//                     color: Colors.grey,
//                   ),
//                   onTap: toggleAdding,
//                 ),
//               ],
//             ),
//           ],
//         ),
//         Divider(thickness: 2),
//         if (isAdding)
//           Column(
//             children: [
//               TextFormField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your name',
//                 ),
//               ),
//               TextFormField(
//                 controller: mobileController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your mobile number',
//                 ),
//               ),
//               TextFormField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your email address',
//                 ),
//               ),
//               TextFormField(
//                 controller: cityController,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your city',
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: addNewProfile,
//                 child: Text('Add Profile'),
//               ),
//             ],
//           )
//         else
//           Column(
//             children: [
//               CommonText(
//                 'Name',
//                 style: TextStyle(
//                   fontSize: 10,
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               CommonText(
//                 'Mobile',
//                 style: TextStyle(
//                   fontSize: 10,
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   isEditing
//                       ? TextFormField(
//                     controller: nameController,
//                     decoration: InputDecoration(
//                       hintText: 'Enter your name',
//                     ),
//                   )
//                       : CommonText(
//                     names[0],
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   isEditing
//                       ? TextFormField(
//                     controller: mobileController,
//                     decoration: InputDecoration(
//                       hintText: 'Enter your mobile number',
//                     ),
//                   )
//                       : CommonText(
//                     mobiles[0],
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 12,
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 17),
//                 child: CommonText(
//                   'Email Address',
//                   style: TextStyle(
//                     fontSize: 10,
//                     color: Colors.deepOrange,
//                   ),
//                 ),
//               ),
//               CommonText(
//                 'City',
//                 style: TextStyle(
//                   fontSize: 10,
//                   color: Colors.deepOrange,
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   isEditing
//                       ? TextFormField(
//                     controller: emailController,
//                     decoration: InputDecoration(
//                       hintText: 'Enter your email address',
//                     ),
//                   )
//                       : CommonText(
//                     emails[0],
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 12,
//                     ),
//                   ),
//                   isEditing
//                       ? TextFormField(
//                     controller: cityController,
//                     decoration: InputDecoration(
//                       hintText: 'Enter your city',
//                     ),
//                   )
//                       : CommonText(
//                     cities[0],
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 12,
//                     ),
//                   ),
//                 ],
//               ),
//               if (isEditing)
//                 ElevatedButton(
//                   onPressed: saveChanges,
//                   child: Text('Save'),
//                 ),
//             ],
//           ),
//       ],
//     );
//   }
// }
//
// class CommonText extends StatelessWidget {
//   final String text;
//   final TextStyle style;
//
//   CommonText(this.text, {this.style});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(text, style: style);
//   }
// }
