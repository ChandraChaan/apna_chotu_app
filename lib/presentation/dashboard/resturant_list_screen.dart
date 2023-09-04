import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

class RestaurantListScreen extends StatefulWidget {
  const RestaurantListScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantListScreen> createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {
  @override
  Widget build(BuildContext context) {
    //var loadedProducts;
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
                      SizedBox(
                        width: 170,
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
                DefaultTabController(
                  length: 6,
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        color: Colors.white,
                        padding:
                            EdgeInsets.only(left: 10, bottom: 20, right: 10),
                        child: TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.black,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                height: 70,
                                padding: EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/biryani.png'))),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: 70,
                                padding: EdgeInsets.only(left: 20, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 2)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Level-1')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: 70,
                                padding: EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 2)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Level-2')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: 70,
                                padding: EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 2)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Level-3')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: 70,
                                padding: EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 2)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Level-4')),
                              ),
                            ),
                            Tab(
                              child: Container(
                                height: 70,
                                padding: EdgeInsets.only(left: 20, right: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 2)),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Level-5')),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        //child: Container(
                        height: 10,
                        //color: Colors.blue,
                        child: TabBarView(
                          children: [
                            Text(''),
                            Text(''),
                            Text(''),
                            Text(''),
                            Text(''),
                            Text(''),
                          ],
                        ),
                      ),
                      //),
                      //Container(),
                    ],
                  ),
                ),
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
                          width: 60,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                                color: Colors.orange, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: RoundedButton(
                            onPressed: () {},
                            name: 'Show All',
                          )),
                    ),
                    SizedBox(
                      width: 30,
                    ),
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
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                            color: Colors.grey),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/image_2.png'),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.heart_broken,
                                        color: Colors.deepOrange,
                                        size: 20,
                                      ),
                                      Text(
                                        '10292',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Flechazo Madhapur",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 2),
                                  Container(
                                    height: 15,
                                    width: 45,
                                    child: RoundedButton(
                                      name: 'New',
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "HUDA Techno Enclave, Madhapur",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                              Divider(thickness: 2),
                              Row(
                                children: [
                                  Text('15.5 Km, 1hour',
                                      style: TextStyle(fontSize: 11)),
                                  SizedBox(width: 75),
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
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Expanded(
                      child: Container(
                        height: 220,
                        width: 150,
                        color: Colors.greenAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 90,
                                  width: 80,
                                  child: Image.asset(
                                    'assets/images/sand.png',
                                  ),
                                ),
                                Text(
                                  "Chese burgessr",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "100 gr meat + onion + \ntomato + Lettuce chese",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    children: [
                      Container(
                        height: 220,
                        width: 150,
                        color: Colors.greenAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 90,
                                  width: 80,
                                  child: Image.asset(
                                    'assets/images/sand.png',
                                  ),
                                ),
                                Text(
                                  "Chese burger",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "100 gr meat + onion + \ntomato + Lettuce chese",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        height: 220,
                        width: 150,
                        color: Colors.greenAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 90,
                                  width: 80,
                                  child: Image.asset(
                                    'assets/images/sand.png',
                                  ),
                                ),
                                Text(
                                  "Chese burger",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "100 gr meat + onion + \ntomato + Lettuce chese",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
