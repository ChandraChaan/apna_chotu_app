import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Config/app_pages.dart';
import '../dashboard/main_home_screen1.dart';
import '../dashboard/main_home_screen2.dart';

class NonVegMenu extends StatefulWidget {
  const NonVegMenu({super.key});

  @override
  State<NonVegMenu> createState() => _NonVegMenuState();
}

class _NonVegMenuState extends State<NonVegMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
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
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
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
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Text('Indian Couisine',
                          style: TextStyle(color: Colors.white, fontSize: 32)),
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
                  children: [
                    Text('Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(width: 175),
                    Container(
                      height: 28,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: Colors.green),
                          color: Colors.white),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(
                              Icons.adjust,
                              color: Colors.green,
                            ),
                            Text(
                              'Veg',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.deepOrange),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.adjust,
                                color: Colors.deepOrange,
                              ),
                              Text(
                                'Non Veg',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xFFF5F5F5),
                  ),
                  child: Column(children: [
                    Container(
                      height: 139,
                      child: Image.asset('assets/images/menu_biryani.png'),
                    ),
                    
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
