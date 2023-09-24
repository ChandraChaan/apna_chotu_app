import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:apna_chotu_app/common/app_text.dart';
import 'package:apna_chotu_app/presentation/payu/payu_payment.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payu_unofficial/flutter_payu_unofficial.dart';
import 'package:flutter_payu_unofficial/models/payment_params_model.dart';
import 'package:flutter_payu_unofficial/models/payment_result.dart';
import 'package:flutter_payu_unofficial/models/payment_status.dart';
import 'package:get/get.dart';

import '../../utils/constant.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<int> tip = [10, 20, 30, 40];
  int quantity = 1;

  Future<void> pay() async {
    PaymentParams _paymentParam = PaymentParams(
      merchantID: '8522235',
      merchantKey: 'Wn0jYR',
      salt: 'T73QXre5AkYRnB1EgPVukwUCZiffmwjv',
      amount: '100',
      transactionID: DateTime.now().millisecondsSinceEpoch.toString(),
      firstName: 'Sathya',
      email: 'sathya@gmail.com',
      productName: 'biryani',
      phone: "9876543210",
      fURL: "https://www.payumoney.com/mobileapp/payumoney/failure.php",
      sURL: "https://www.payumoney.com/mobileapp/payumoney/success.php",
      udf1: "udf1",
      udf2: "udf2",
      udf3: "udf3",
      udf4: "udf4",
      udf5: "udf5",
      udf6: "",
      udf7: "",
      udf8: "",
      udf9: "",
      udf10: "",
      hash:
          "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDFGZ1veYHrq/9uUT58e+4Nz7lHjyJ8aPB6TL0qM/fCCdAH0siCHkD7l6ENHnojMmhYq9QjdnJ6q0zeQSi86YUl7f/CGIvyL8AwsNTrW+Di8jWum8fj170ZlvOIxaYr6lmVIWtWRumf4VBE3YXHmQeJaJijl0cSJeD2jDqImPeFnGtHEaZ6CRgLeiO4rXX9pX09DUFW4K5MldgqyYJSSXi+kepViADM4tzFvt+kvO4frUKuQ9RakdovYVpnWTEkw9T4qZj85liiBWK/JWPAhiK1bpzLfIK6B8WqzMtOaoFnoN7G87SafRIV4r8eN3jeLio0rDFOQifaI4WEXd9JisNXAgMBAAECggEAEG4FMKCpUtLglPqSwd+2xVH2eN+WmVZKDXfOIPF6CqO0wqIwcqBA/Hf0RdqvhbWS+yk/osEh49XZr4Ew+yZgIfxH4I8ZQ1P1qlljNkdPZLuZ+/ciX3zBV5u8qz8GjgyX8RV7FBMPMHOgtEze9PdtqGeeqaxXkUy1BvhDfNV7dJii6YmILtqi0nQpf3n+fSmr5gvz5JacNW/id0yhJL6Tzz/6DkT7lzwRl1c7AoRON/mXj9473yltOCCPrZ1R3e+PMLDD4g9Kq1XZo7WgXFC4Ag5iEQu0ckNHYTJ6cnnGG3EgAFOK+ukncmNeTT3prZ8KTb3nqjNPrZxw1GA59zB2AQKBgQDhgTBEJcXuzhLJcbET2VT/xflngygjgusa7X05IswZXwm152IjpgvJomzQIVM1RzOvAGF+/hhAiFOcFgrxstkJRY9iqeysfweZEf7VFPQ4nG8DV3ZlrNAazHPqPrpnZGeo243H3s4ggbt3S2t4BbXmXOBlykRttkcnBDo4+ekSVwKBgQDfwRRtsr3ziIWsfOZESMO3uehp8fgkQRxJiCFLOtfVqF0UIbdfdgz5BHKcw2jwFMsi3S0WpKBiDMBusWrDcInJxEFoYSp3k5LCVwIYrXzP3b+I/Co4U3l6BHObPbHa4ZENvR8CmIgUUu6X+TZtfZK+rNCmQaMyq2Ba5p74lDc3AQKBgQCXwaEBu4ngk74A4woQGYoiNtEI4DL68vfVP02uTcScrmCSkgxxgSUdpLklt8ePa0NU2iTCma0ogJYDzLHAxmNY4f8EnuYvj61FTd749wkDsALldM6wzgOehUjcsyouulsoP9jCUSbWqXfHaHICa5VmWcqJtf0m+CwaDbZA8a3wMQKBgQCzbZe+KBme0xmuqjHVDCy2hkRTwQ/lsrjGVn2sYDF4Shzp6eesi3P3tJNcFm9uJp6HBKoFgFqEhglCOs+MjhBQVirFUzXE0fhcE33A4E44OnA/n0cUCAxfxnYWRTD8fundBI17fWmSMrbV86irwIkOknJ3ACeomDkaa9mLKP/mAQKBgAsbu6uelB6kKcNU0NYQz4CQQ7LhiAIhDOQbkR7T+T6CbwsZtp2nfuPFu5SiZhaZz884QKFbP539jOFnOjkHM2n10wYueys2w1WGZJoq7K5viYuEMalnPg1kndtl6LmJqaSu6CWCSnluAqWQ6X/jn9tzAgnhLUtdGpmfeXjjMS/X",
      //Hash is required will initialise with empty string now to set actuall hash later
      isDebug: false, // true for Test Mode, false for Production
    );

    //Generating local hash
    var bytes = utf8.encode(
        "${_paymentParam.merchantKey}|${_paymentParam.transactionID}|${_paymentParam.amount}|${_paymentParam.productName}|${_paymentParam.firstName}|${_paymentParam.email}|udf1|udf2|udf3|udf4|udf5||||||${_paymentParam.salt}");
    String localHash = sha512.convert(bytes).toString();
    _paymentParam.hash = localHash;

    try {
      PayuPaymentResult _paymentResult =
          await FlutterPayuUnofficial.initiatePayment(
              paymentParams: _paymentParam, showCompletionScreen: true);

      //Checks for success and prints result

      if (_paymentResult != null) {
        //_paymentResult.status is String of course. Directly fetched from payU's Payment response. More statuses can be compared manually

        if (_paymentResult.status == PayuPaymentStatus.success) {
          print("Success: ${_paymentResult.response}");
        } else if (_paymentResult.status == PayuPaymentStatus.failed) {
          print("Failed: ${_paymentResult.response}");
        } else if (_paymentResult.status == PayuPaymentStatus.cancelled) {
          print("Cancelled by User: ${_paymentResult.response}");
        } else {
          print("Response: ${_paymentResult.response}");
          print("Status: ${_paymentResult.status}");
        }
      } else {
        print("Something's rotten here");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 80),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: -12,
                  contentPadding: EdgeInsets.all(0),
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  title: CommonText(
                    'Checkout',
                    style: UInormalStyle,
                  ),
                  subtitle: CommonText('2 items, Total: ₹ 225'),
                ),
                Container(
                  height: 60,
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
                              size: 14,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            CommonText(
                              'Palamuru Grill | ',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            CommonText(
                              'Delivery in: 33 mins',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.brightness_1_outlined,
                              size: 14,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            CommonText(
                              'Office | Q2, 6th Floor, Cyber Tower, Hitech City',
                              style: TextStyle(
                                  fontSize: 11,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/biryani_3.png'),
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 70),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: Colors.deepOrange),
                          color: Color(0xFFFFDFC6)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (quantity > 1) quantity--;
                              });
                            },
                          ),
                          CommonText('$quantity'),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFF3F3F3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 25,
                                    child: Image.asset(
                                      'assets/images/coupon.png',
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CommonText(
                                        'Coupon Corner',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: CommonText(
                            'View All Coupons',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
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
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/tip.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          CommonText(
                            'Tip your delivery partner',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ],
                      ),
                      CommonText(
                          'It means a lot that you are kind. Your delivery partner will receive your entire gratuity.'),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          for (int a = 0; a < tip.length; a++)
                            SizedBox(
                              width: 70,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your button click logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.deepOrange,
                                  backgroundColor: Colors.white,
                                  // Change this color as needed
                                  elevation: 0,
                                  // You can adjust the elevation as needed
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        8.0), // You can adjust the border radius as needed
                                  ),
                                ),
                                child: Container(
                                  height: 43,
                                  //width: ,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        // color: Colors.deepOrange,
                                        size: 17,
                                      ),
                                      Text(
                                        '${tip[a]}',
                                        style: TextStyle(
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(
                            width: 70,
                            child: ElevatedButton(
                              onPressed: () {
                                // Add your button click logic here
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.deepOrange,
                                backgroundColor: Colors.white,
                                // Change this color as needed
                                elevation: 0,
                                // You can adjust the elevation as needed
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      8.0), // You can adjust the border radius as needed
                                ),
                              ),
                              child: Container(
                                height: 43,
                                width: 60,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '+',
                                      style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 91,
                  color: Color(0xFFF3F3F3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.cancel_outlined),
                      SizedBox(width: 2),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            'Cancellation Policy',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 7),
                          Column(
                            children: [
                              CommonText(
                                  '100% cancellation fee will be applicable if you\ndecide to cancel the order anytime after order\nplacement. Avoid cancellation as it leads to food \nwastage'),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 40,
          //width: 167,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.currency_rupee),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          '381.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        CommonText(
                          'View Detailed Bill',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 167,
                child: RoundedButton(
                  onPressed:
                      pay /*() {
                    pay
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => PayuPayment()));
                  }*/
                  ,
                  name: '',
                  child: CommonText(
                    'Proceed to Pay',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
