import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // List tile have more....
            Container(
              color: Colors.red,
              height: 160,
              // width: 120,
              // child: ListTile(
              //   minLeadingWidth: 0,
              //   minVerticalPadding: 0,
              //   horizontalTitleGap: 10,
              //   contentPadding: const EdgeInsets.all(0),
              //   leading: Row(
              //     children: [
              //       IconButton(
              //         onPressed: () {
              //           Get.back();
              //         },
              //         icon: Icon(Icons.chevron_left, size: 45),
              //       ),
              //       CommonText(
              //         'Madhapur',
              //         style:
              //         TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              //       ),
              //       CommonText(
              //         'Rahimpura, ',
              //         style: TextStyle(fontSize: 14),
              //       ),
              //     ],
              //   ),
              //   trailing: SizedBox(
              //     width: 100,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Icon(Icons.notifications),
              //         CircleAvatar(
              //           backgroundImage: AssetImage(''),
              //           radius: 23,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
