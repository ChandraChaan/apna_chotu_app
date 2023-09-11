import 'package:apna_chotu_app/common/app_text.dart';
import 'package:apna_chotu_app/common/container_lineargradient.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: -15,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                title: CommonText(
                  'Checkout',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: CommonText('2 items, Total: ₹ 225'),
              ),
              Container(
                height: 93,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0XFFFA6423), Color(0xFF9A2D08)],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.brightness_1_outlined,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          CommonText(
                            'Palamuru Grill | ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          CommonText(
                            'Delivery in: 33 mins',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.brightness_1_outlined,
                            size: 18,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          CommonText(
                            'Office | Q2, 6th Floor, Cyber Tower, Hitech City',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/biryani_3.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CommonText(
                        'Chicken Biryani',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            size: 14,
                          ),
                          CommonText(
                            '225',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 70),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 65),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFF3F3F3)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.control_point),
                    ),
                    CommonText(
                      'Add more items',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFF3F3F3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle),
                        SizedBox(width: 7),
                        CommonText(
                          'Coupon Corner',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 210),
                        TextButton(
                          onPressed: () {},
                          child: CommonText(
                            'Apply',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                      ],
                    ),
                    CommonText(
                      'Save 100 more on this order',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.deepOrange),
                    ),
                    CommonText(
                      'Code: JUSTFORYOU',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Center(
                      child: CommonText(
                        'View All Coupons',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              CommonText(
                'Detailed Bill',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(height: 7),
              CommonText(
                'Chicken Jumbo Pack Biryani (2)',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.deepOrange),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  CommonText('Item Total'),
                  SizedBox(width: 250),
                  Icon(Icons.currency_rupee, size: 15),
                  CommonText('225.00')
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  CommonText('Delivery Partner Fee'),
                  SizedBox(width: 194),
                  Icon(Icons.currency_rupee, size: 15),
                  CommonText('51.00')
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  CommonText('Delivery Tip'),
                  SizedBox(width: 248),
                  Icon(Icons.currency_rupee, size: 15),
                  CommonText('50.00')
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  CommonText('Taxes'),
                  SizedBox(width: 285),
                  Icon(Icons.currency_rupee, size: 15),
                  CommonText('55.00')
                ],
              ),
              SizedBox(height: 7),
              Divider(thickness: 2),
              SizedBox(height: 5),
              Row(
                children: [
                  CommonText(
                    'Paid Via Credit Card',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 198),
                  Icon(
                    Icons.currency_rupee,
                    size: 15,
                  ),
                  CommonText(
                    '381.00',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 5),
              Divider(thickness: 2),
              SizedBox(height: 7),
              Container(
                height: 121,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.money),
                        CommonText(
                          'Tip your delivery partner',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                    CommonText('It means a lot that you are kind. Your delivery partner will receive your entire gratuity.')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
