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
                horizontalTitleGap: 10,
                contentPadding: const EdgeInsets.all(0),
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.chevron_left, size: 38),
                ),
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonText(
                      'Order Details',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: CommonText('#163728282738, Delivered, 1 Item, ₹ 1235'),
                  ),
                ],
              ),
              Divider(thickness: 2),
              Row(
                children: [
                  Icon(Icons.brightness_1_outlined, color: Colors.deepOrange),
                  SizedBox(width: 5),
                  CommonText(
                    'Grand Hotel',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CommonText('Opposite Big Bazaar, Abids Road, Hyderabad'),
              ),
              SizedBox(height: 22),
              Row(
                children: [
                  Icon(Icons.brightness_1_outlined, color: Colors.deepOrange),
                  SizedBox(width: 5),
                  CommonText(
                    'Home',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CommonText('Rahimpura, Puranapul, Hyderabad'),
              ),
              SizedBox(height: 17),
              Divider(thickness: 2),
              SizedBox(height: 17),
              CommonText(
                'Chicken Jumbo Pack Biryani (2)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  CommonText('item Total'),
                  SizedBox(width: 250),
                  Icon(Icons.currency_rupee, size: 18),
                  CommonText('1234.00')
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  CommonText('Delivery Partner Fee'),
                  SizedBox(width: 185),
                  Icon(Icons.currency_rupee, size: 18),
                  CommonText('51.00')
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  CommonText('Delivery Tip'),
                  SizedBox(width: 238),
                  Icon(Icons.currency_rupee, size: 18),
                  CommonText('50.00')
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  CommonText('Taxes'),
                  SizedBox(width: 275),
                  Icon(Icons.currency_rupee, size: 18),
                  CommonText('55.00')
                ],
              ),
              Divider(thickness: 2),
              SizedBox(height: 17),
              Row(
                children: [
                  CommonText('Paid via Credit Card'),
                  SizedBox(width: 184),
                  Icon(Icons.currency_rupee, size: 18),
                  CommonText('1,391.00')
                ],
              ),
              SizedBox(height: 17),
              Divider(thickness: 2),
              SizedBox(height: 180,),
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
