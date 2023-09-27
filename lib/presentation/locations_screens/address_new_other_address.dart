import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../Config/app_pages.dart';
import '../../common/app_text.dart';
import '../../utils/rounded_button.dart';

class OthersAddress extends StatefulWidget {
  const OthersAddress({super.key});

  @override
  State<OthersAddress> createState() => OthersAddressState();
}

class OthersAddressState extends State<OthersAddress> {
  int _value = 1;
  int _addressValue = 1;
  TextEditingController addressController = TextEditingController();
  final LocalDb = GetStorage();

  // Extract specific arguments
  double? latitude;
  double? longitude;
  String? address;
  String? landmark;
  String? locality;

  @override
  void initState() {
    final arguments = Get.arguments;
    if (arguments != null) {
      latitude = arguments['latitude'] ?? 0;
      longitude = arguments['longitude'] ?? 0;
      addressController.text = arguments['address'] ?? '';
      landmark = arguments['landmark'] ?? '';
      locality = arguments['locality'] ?? '';
    }
    setState(() {});
    super.initState();
  }

  void addAddress() async {
    // Define the API endpoint URL
    var url =
        Uri.parse('https://openteqdev.com/Apnachotu_dev/api/user/add_address');

    // Prepare the request body
    var body = {
      'user_id': '${LocalDb.read('userid')}',
      'lat': latitude.toString(),
      'lng': longitude.toString(),
      'address': addressController.text,
      'locality': locality,
      'address_type': _addressValue == 1 ? 'HOME' : 'HOTEL',
      'landmark': 'NCC',
    };

    // Make the POST request
    var response = await http.post(url, body: body);

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Parse the JSON response
      Map<String, dynamic> data = json.decode(response.body);

      // Check the status in the response
      if (data['status'] == 1) {
        Get.toNamed(Routes.dashBoardScreen);
        print('Address Inserted Successfully');
      } else {
        print('Failed to insert address: ${data['message']}');
      }
    } else {
      // Handle errors here, such as network issues or server errors
      print(
          'Failed to make the API request. Status code: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.black, size: 45),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text16Black('Add New Address'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text10OrangeBld('Who are you ordering for?'),
                ),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                            // print(_value);
                            // print('this is updated value');
                          });
                        }),
                    const Text10Black('Myself'),
                    Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                            // print(_value);
                            // print('this is updated value');
                          });
                        }),
                    const Text10Black('Others'),
                  ],
                ),
                if (_value == 2) ...[
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text10BlackBld('The address type was?'),
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _addressValue,
                          onChanged: (value) {
                            setState(() {
                              _addressValue = value!;
                              // print(_value);
                              // print('this is updated value');
                            });
                          }),
                      const Text10Black('Home'),
                      Radio(
                          value: 2,
                          groupValue: _addressValue,
                          onChanged: (value) {
                            setState(() {
                              _addressValue = value!;
                              // print(_value);
                              // print('this is updated value');
                            });
                          }),
                      const Text10Black('Hotel'),
                    ],
                  ),
                  Container(
                    height: 44,
                    //padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Name'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 44,
                    //padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: '+91  Mobile Number'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
                Container(
                  //padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: addressController,
                    maxLines: 3,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Complete Address*'),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    // padding: const EdgeInsets.all(10),
                    child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Floor (Optional)'),
                )),
                SizedBox(
                  height: 5,
                ),
                Container(
                    //padding: const EdgeInsets.all(10),
                    child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Nearby Landmark (Optional)'),
                )),
                SizedBox(height: 10),
                Center(
                  child: RoundedButton(
                    // width: MediaQuery.of(context).size.width/1.2,
                    onPressed: () {
                      if (addressController.text.isNotEmpty) addAddress();
                    },
                    name: 'Save Address',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
