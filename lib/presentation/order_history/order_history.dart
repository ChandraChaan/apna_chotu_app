import 'package:apna_chotu_app/common/buttom_navigation_bar.dart';
import 'package:apna_chotu_app/presentation/order_history/order_details_screen.dart';
import 'package:apna_chotu_app/presentation/order_history/review_screeen.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBottomNavigationBar(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: -18,
                  contentPadding: const EdgeInsets.all(0),
                  leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  title: SizedBox(
                    width: 100,
                    child: Text16BlackBld('Order Details'),
                  ),
                ),
                Divider(thickness: 2),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: Text14OrangeBld('Grand Hotel'),
                    ),
                    SizedBox(width: 250),
                    Icon(
                      Icons.verified,
                      size: 14,
                      color: Colors.green,
                    ),
                    Text10Black('Delivered')
                  ],
                ),
                Text10Black('Koti'),
                SizedBox(height: 5),
                Text12BlackBld('Chicken Jumbo Pack Biryani(2)'),
                Text10Black('June 20,2023'),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.currency_rupee, size: 13),
                    Text14BlackBld(
                      '1234',
                    ),
                    SizedBox(width: 203),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 14,
                        )),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',
                        child: Text13WhitekBld('Reorder'),
                      ),
                    )
                  ],
                ),
                Divider(thickness: 1.5),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: Text14OrangeBld(
                        'Shree Santosh Family Dhaba'
                      ),
                    ),
                    SizedBox(width: 145),
                    Icon(
                      Icons.verified,
                      size: 14,
                      color: Colors.green,
                    ),
                    Text10Black('Delivered'),
                  ],
                ),
                Text10Black('madhapur'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text14BlackBld('Butter Non (4), kadai panner(Full,1),'
                        //
                        ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 15),
                    Text14BlackBld('960'),
                  ],
                ),
                Text14BlackBld(
                  'Panner Fried Rice(Full,2, Baby Corn\nMajestic(Full,1)',
                ),
                SizedBox(height: 3),
                Text10Black('June 02,2023'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 15,
                    ),
                    Text14BlackBld('1234'),
                    SizedBox(width: 200),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 14,
                        )),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',
                        child: Text13WhitekBld('Reorder'),
                      ),
                    ),
                  ],
                ), // Cafe Bahar
                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: Text14OrangeBld('Cafe Bahar'),
                    ),
                    SizedBox(width: 260),
                    Icon(
                      Icons.verified,
                      size: 15,
                      color: Colors.green,
                    ),
                    Text10Black('Delivered'),
                  ],
                ),
                Text10Black('Himayath Nagar'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text14BlackBld('Butter Naan(5), Chicken Curry (Full,1)'
                        //
                        ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 15),
                    Text14BlackBld('395'),
                  ],
                ),
                SizedBox(height: 3),
                Text10Black('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 15,
                    ),
                    Text14BlackBld('1234'),
                    SizedBox(width: 200),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(Icons.star,
                            size: 15, color: Colors.deepOrange)),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',
                        child: Text13WhitekBld('Reorder'),
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: Text14OrangeBld('Food Zone 2'),
                    ),
                    SizedBox(width: 253),
                    Icon(
                      Icons.cancel,
                      size: 15,
                      color: Colors.deepOrange,
                    ),
                    Text10Black('Canceled'),
                  ],
                ),
                Text10Black('Hi-tech City'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text14BlackBld('Butter Naan(5), Chicken Curry(Full,1)'),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 15),
                    Text14BlackBld('395'),
                  ],
                ),
                SizedBox(height: 3),
                Text10Black('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 15,
                    ),
                    Text14BlackBld('1234'),
                    SizedBox(width: 200),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(Icons.star,
                            size: 15, color: Colors.deepOrange)),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',
                        child: Text13WhitekBld('Reorder'),
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: Text14OrangeBld('Paradise Madhapur'),
                    ),
                    SizedBox(width: 207),
                    Icon(
                      Icons.verified,
                      size: 15,
                      color: Colors.green,
                    ),
                    Text10Black('Delivered'),
                  ],
                ),
                Text10Black('madhapur'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text14BlackBld(
                      'Chicken Biryani(Full 2)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                  ],
                ),
                SizedBox(height: 3),
                CommonText('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 15,
                    ),
                    Text14BlackBld('1234'),
                    SizedBox(width: 200),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(Icons.star,
                            size: 15, color: Colors.deepOrange)),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',
                        child: Text13WhitekBld('Reorder'),
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text14OrangeBld('Food Zone 2'),
                    SizedBox(width: 250),
                    Icon(
                      Icons.cancel,
                      size: 15,
                      color: Colors.deepOrange,
                    ),
                    Text10Black('Canceled'),
                  ],
                ),
                Text10Black('Hi-tech City'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text14BlackBld('Butter Naan(5), Chicken Curry(Full,1)'),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 18),
                    Text14BlackBld('395'),
                  ],
                ),
                SizedBox(height: 3),
                Text10Black('June 02,2023'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 15,
                    ),
                    Text14BlackBld('1234'),
                    SizedBox(width: 200),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(Icons.star,
                            size: 15, color: Colors.deepOrange)),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',child: Text13WhitekBld('Reorder'),
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: Text14OrangeBld('Food Zone 2'),
                    ),
                    SizedBox(width: 250),
                    Icon(
                      Icons.cancel,size: 15,
                      color: Colors.deepOrange,
                    ),
                    Text10Black('Canceled'),
                  ],
                ),
                Text10Black('Hi-tech City'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text14BlackBld(
                      'Butter Naan(5), Chicken Curry(Full,1)'
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text10Black('June 02,2023'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 15,
                    ),
                    Text14BlackBld('1234'),
                    SizedBox(width: 200),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(Icons.star,
                            size:15,
                            color: Colors.deepOrange)),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',child: Text13WhitekBld('Reorder'),
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: Text14OrangeBld('Absolute Barbecue'),
                    ),
                    SizedBox(width: 207),
                    Icon(
                      Icons.cancel,size: 15,
                      color: Colors.deepOrange,
                    ),
                    Text10Black('Cancelled'),
                  ],
                ),
                Text10Black('Gachibowli'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text14BlackBld(
                      'Chicken Wings(6), Chicken Curry(Full,1)'
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text10Black('June 02,2023'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 15,
                    ),
                    Text14BlackBld('865'),
                    SizedBox(width: 209),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(Icons.star,size: 15, color: Colors.deepOrange)),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {},
                        name: '',child: Text13WhitekBld('Reorder'),
                      ),
                    ),
                  ],
                ),

                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderDetailsScreen()));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderDetailsScreen()));
                        },
                        child: Text14OrangeBld('Food Zone 2'),
                      ),
                    ),
                    SizedBox(width: 250),
                    Icon(
                      Icons.cancel,size: 15,
                      color: Colors.deepOrange,
                    ),
                    Text10Black('Canceled'),
                  ],
                ),
                Text10Black('Hi-tech City'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text14BlackBld(
                      'Butter Naan(5), Chicken Curry(Full,1)'
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text10Black('June 02,2023'),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text14BlackBld('395'),
                    SizedBox(width: 206),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()));
                        },
                        child: Icon(Icons.star,size: 15, color: Colors.deepOrange)),
                    Text10Black('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 32,
                      width: 77,
                      child: RoundedButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>showBottomSheet(context: context, builder: builder)))
                        },
                        name: '',child: Text13WhitekBld('Reorder'),
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
