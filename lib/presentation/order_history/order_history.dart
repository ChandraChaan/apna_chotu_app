import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 10,
                  contentPadding: const EdgeInsets.all(0),
                  leading: IconButton(
                    onPressed: () {Get.back();},
                    icon: Icon(Icons.chevron_left, size: 38),
                  ),
                  title: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Order Details',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(thickness: 2),
                Row(
                  children: [
                    Text(
                      'Grand Hotel',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.deepOrange),
                    ),
                    SizedBox(width: 200),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                    Text('Delivered')
                  ],
                ),
                Text('Koti'),
                SizedBox(height: 15),
                Text(
                  'Chicken Jumbo Pack Biryani(2)',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text('June 20,2023'),
                SizedBox(height: 18),
                Row(
                  children: [
                    Icon(Icons.currency_rupee, size: 18),
                    Text(
                      '1234',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    )
                  ],
                ),
                Divider(thickness: 1.5),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Shree Santosh Family Dhaba',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 63),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                    Text('Delivered'),
                  ],
                ),
                Text('madhapur'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Butter Non (4), kadai panner(Full,1),',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 18),
                    Text(
                      '960',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  'Panner Fried Rice(Full,2, Baby Corn\nMajestic(Full,1)',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('1234'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    ),
                  ],
                ), // Cafe Bahar
                Divider(thickness: 2),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Cafe Bahar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 200),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                    Text('Delivered'),
                  ],
                ),
                Text('Himayath Nagar'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Butter Naan(5), Chicken Curry (Full,1)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 18),
                    Text(
                      '395',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('1234'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Food Zone 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 190),
                    Icon(
                      Icons.cancel,
                      color: Colors.deepOrange,
                    ),
                    Text('Canceled'),
                  ],
                ),
                Text('Hi-tech City'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Butter Naan(5), Chicken Curry(Full,1)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 18),
                    Text(
                      '395',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('1234'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Paradise Madhapur',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 130),
                    Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                    Text('Delivered'),
                  ],
                ),
                Text('madhapur'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Chicken Biryani(Full 2)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('1234'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Food Zone 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 190),
                    Icon(
                      Icons.cancel,
                      color: Colors.deepOrange,
                    ),
                    Text('Canceled'),
                  ],
                ),
                Text('Hi-tech City'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Butter Naan(5), Chicken Curry(Full,1)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.currency_rupee, size: 18),
                    Text(
                      '395',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('1234'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Food Zone 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 190),
                    Icon(
                      Icons.cancel,
                      color: Colors.deepOrange,
                    ),
                    Text('Canceled'),
                  ],
                ),
                Text('Hi-tech City'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Butter Naan(5), Chicken Curry(Full,1)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('1234'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 2),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Absolute Barbecue',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 130),
                    Icon(
                      Icons.cancel,
                      color: Colors.deepOrange,
                    ),
                    Text('Cancelled'),
                  ],
                ),
                Text('Gachibowli'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Chicken Wings(6), Chicken Curry(Full,1)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('865'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
                      ),
                    ),
                  ],
                ),

                Divider(thickness: 2),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text('Food Zone 2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                            fontSize: 18)),
                    SizedBox(width: 190),
                    Icon(
                      Icons.cancel,
                      color: Colors.deepOrange,
                    ),
                    Text('Canceled'),
                  ],
                ),
                Text('Hi-tech City'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Butter Naan(5), Chicken Curry(Full,1)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      //
                    ),
                  ],
                ),
                SizedBox(height: 3),
                Text('June 02,2023'),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      size: 18,
                    ),
                    Text('395'),
                    SizedBox(width: 130),
                    Icon(Icons.star, color: Colors.deepOrange),
                    Text('Rate Order'),
                    SizedBox(width: 4),
                    Container(
                      height: 40,
                      width: 115,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Reorder',
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
