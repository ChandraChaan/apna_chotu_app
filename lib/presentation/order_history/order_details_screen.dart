import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: -10,
                contentPadding: const EdgeInsets.all(0),
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios, size: 25,color: Colors.black,),
                ),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonText(
                      'Order Details',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 39),
                    child: Text10Black('#163728282738, Delivered, 1 Item, ₹ 1235'),
                  ),
                ],
              ),
              Divider(thickness: 2),
              Row(
                children: [
                  Icon(Icons.brightness_1_outlined, color: Colors.deepOrange),
                  SizedBox(width: 5),
                  Text14OrangeBld(
                    'Grand Hotel'
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text10Black('Opposite Big Bazaar, Abids Road, Hyderabad'),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.brightness_1_outlined, color: Colors.deepOrange),
                  SizedBox(width: 5),
                  Text14OrangeBld(
                    'Home'
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text10Black('Rahimpura, Puranapul, Hyderabad'),
              ),
              SizedBox(height: 5),
              Divider(thickness: 2),
              SizedBox(height: 5),
              Text12BlackBld(
                'Chicken Jumbo Pack Biryani (2)'),
              SizedBox(height: 5),
              Row(
                children: [
                  Text10Black('item Total'),
                  SizedBox(width: 250),
                  Icon(Icons.currency_rupee, size: 18),
                  Text10Black('1234.00')
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text10Black('Delivery Partner Fee'),
                  SizedBox(width: 204),
                  Icon(Icons.currency_rupee, size: 18),
                  Text10Black('51.00')
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text10Black('Delivery Tip'),
                  SizedBox(width: 242),
                  Icon(Icons.currency_rupee, size: 18),
                  Text10Black('50.00')
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text10Black('Taxes'),
                  SizedBox(width: 268),
                  Icon(Icons.currency_rupee, size: 18),
                  Text10Black('55.00')
                ],
              ),
              Divider(thickness: 2),
              SizedBox(height: 5),
              Row(
                children: [
                  Text10Black('Paid via Credit Card'),
                  SizedBox(width: 203),
                  Icon(Icons.currency_rupee, size: 18),
                  Text10Black('1,391.00')
                ],
              ),
              SizedBox(height: 5),
              Divider(thickness: 2),
              SizedBox(height: 100,),
              Center(
                child: Container(
                  height: 40,
                  width: 130,
                  child: RoundedButton(
                    onPressed: () {},
                    name: 'Reorder',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
