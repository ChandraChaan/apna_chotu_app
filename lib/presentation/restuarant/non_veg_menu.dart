import 'package:apna_chotu_app/utils/menu_tabs.dart';
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
  int selected = 1;

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
                    Icons.arrow_back_ios,
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
                subtitle: Text(
                  'Opposite Meridian School,Ayyappa society, \nMadhapur,100 Feet Rd,Hyderabad, Telangana 500081',
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Icon(Icons.search),
              ),
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
              MenuTabs(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    // SizedBox(width: 175),

                    Row(
                      children: [
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
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
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
              ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            selected = index;
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  child: Image.asset(
                                    'assets/images/biryani2.png',
                                    fit: BoxFit
                                        .cover, // Use BoxFit.cover to maintain aspect ratio and cover the space
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  // Add some padding for spacing
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // Use spaceEvenly for consistent spacing
                                    children: [
                                      Text(
                                        'Chicken Biryani',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepOrange,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        'Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        index.isOdd ? 'Closes soon' : 'Open',
                                        style: TextStyle(
                                          color: index.isOdd
                                              ? Colors.red
                                              : Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '\$180',
                                            style: TextStyle(
                                              // color: Colors.b,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '4',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 18,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            '(122)',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: selected == index
                                      ? Colors.redAccent
                                      : Colors.grey.shade200,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: selected == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
