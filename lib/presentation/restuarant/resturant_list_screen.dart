import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../utils/menu_tabs.dart';

class RestaurantListScreen extends StatefulWidget {
  const RestaurantListScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantListScreen> createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {
  List<Map<String, dynamic>> listItems = [
    {
      "image": "assets/images/image_2.png",
      "name": "Flechazo Madhapur",
      "likes": "10292",
      "subTitle": "HUDA"
    },
    {
      "image": "assets/images/image_2.png",
      "name": "Flechazo Madhapur",
      "likes": "10292",
      "subTitle": "HUDA"
    },
    {
      "image": "assets/images/image_2.png",
      "name": "Flechazo Madhapur",
      "likes": "10292",
      "subTitle": "HUDA"
    },
    {
      "image": "assets/images/image_2.png",
      "name": "Flechazo Madhapur",
      "likes": "10292",
      "subTitle": "HUDA"
    },
    {
      "image": "assets/images/image_2.png",
      "name": "Flechazo Madhapur",
      "likes": "10292",
      "subTitle": "HUDA"
    },
    {
      "image": "assets/images/image_2.png",
      "name": "Flechazo Madhapur",
      "likes": "10292",
      "subTitle": "HUDA"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,Vinay',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'What do you want to eat?',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.notifications_on_outlined,
                        color: Colors.black,
                        size: 25.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                      // autocorrect: true,
                      decoration: InputDecoration(
                          hintText: 'search"Biryani"',
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.deepOrange,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          // fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            // borderSide: BorderSide(color: Colors.grey, width: 2),
                          ))),
                ),
                MenuTabs(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Restaurents near you',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                              width: 75,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                    color: Colors.orange,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: RoundedButton(
                                padding: 0,
                                onPressed: () {},
                                name: '',
                                child: Text(
                                  'Show All',
                                  style: TextStyle(fontSize: 13),
                                ),
                              )),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.dehaze_rounded,
                            color: Colors.black,
                            size: 15.0,
                          ),
                        ),
                        Text(
                          'Sort by',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for (int a = 0; a < listItems.length; a++)
                      Container(
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                            color: Color(0xFFF5F5F5FF)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        '${listItems[a]['image']}',
                                      ),
                                      fit: BoxFit.fitWidth),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.deepOrange,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '10292',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 9,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${listItems[a]['name']}',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: 15,
                                          width: 45,
                                          child: RoundedButton(
                                            padding: 0,
                                            name: 'New',
                                            child: Text(
                                              'New',
                                              style: TextStyle(fontSize: 9),
                                            ),
                                            onPressed: () {},
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "HUDA Techno Enclave, Madhapur",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Divider(thickness: 2),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('15.5 Km, 1hour',
                                            style: TextStyle(fontSize: 11)),
                                        // SizedBox(width: 75),
                                        Text(
                                          '4.0',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.deepOrange,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
