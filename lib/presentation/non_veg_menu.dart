import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Config/app_pages.dart';
import 'dashboard/main_home_screen1.dart';
import 'dashboard/main_home_screen2.dart';

class NonVegMenu extends StatefulWidget {
  const NonVegMenu({super.key});

  @override
  State<NonVegMenu> createState() => _NonVegMenuState();
}

class _NonVegMenuState extends State<NonVegMenu> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    FoodScreen(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            // List tile have more....
            ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: 10,
                contentPadding: const EdgeInsets.all(0),
                leading: IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Palamuru Grill',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Opposite Meridian School,Ayyappa society, \nMadhapur,100 Feet Rd,Hyderabad, Telangana 500081',
                        style: TextStyle(fontSize: 13),
                      ),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)),),
                        child: Icon(Icons.search),
                      )
                    ])),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 95,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delicious',
                        style: TextStyle(color: Colors.white,fontSize: 60)),
                    Text('Delicious',
                        style: TextStyle(color: Colors.white,)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(label: Image.asset('assets/images/biryani.png')),
                  Chip(label: Image.asset('assets/images/frame_38.png')),
                  Chip(label: Image.asset('assets/images/frame_38.png'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Menu',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    width: 148,
                  ),
                  Container(
                    child: Image.asset('assets/images/group_3165.png'),
                  ),
                  Container(
                    child: Image.asset('assets/images/group_3166.png'),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_180.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3179.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3168.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3169.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3170.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3171.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3172.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3173.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3174.png')),
            SizedBox(height: 10),
            Container(child: Image.asset('assets/images/group_3175.png'))
          ]),
        ),
      ),
    );
  }
}
