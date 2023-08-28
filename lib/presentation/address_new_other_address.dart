import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../utils/rounded_button.dart';

class OthersAddress extends StatefulWidget {
  const OthersAddress({super.key});

  @override
  State<OthersAddress> createState() => OthersAddressState();
}

class OthersAddressState extends State<OthersAddress> {
  int _value = 1;
  int _addressValue = 1;
  TextEditingController addressController = TextEditingController(text: 'helo');

  @override
  void initState() {
    print('the arguments was ${Get.arguments.toString()}');
    addressController.text =
        '3rd Floor, Pentagon 4, Margaretta, Harada, Pune, Maharashtra 411028';
    setState(() {});
    super.initState();
  }


  void addAddress() async {
    // Define the API endpoint URL
    var url = Uri.parse('https://openteqdev.com/Apnachotu_dev/api/user/add_address');

    // Prepare the request body
    var body = {
      'user_id': '1',
      'lat': '17.34324',
      'lng': '78.54543',
      'address': 'Gafoor n agar, Madhapur, Hyderabad',
      'locality': 'Madhapur',
      'address_type': 'HOME',
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
        print('Address Inserted Successfully');
      } else {
        print('Failed to insert address: ${data['message']}');
      }
    } else {
      // Handle errors here, such as network issues or server errors
      print('Failed to make the API request. Status code: ${response.statusCode}');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon:
                  const Icon(Icons.chevron_left, color: Colors.black, size: 45),
              onPressed: () {
                Get.back();
              },
            ),
            title: Text(
              'Add New Address',
              style: TextStyle(color: Colors.black),
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 15),
                  child: Text(
                    'Who are you ordering for?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.deepOrange),
                  ),
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
                    const Text('Myself', style: TextStyle(fontSize: 15)),
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
                    const Text('Others', style: TextStyle(fontSize: 15)),
                  ],
                ),
                if (_value == 2) ...[
                  const Padding(
                    padding: EdgeInsets.only(left: 18, top: 15),
                    child: Text(
                      'The address type was?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.deepOrange),
                    ),
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
                      const Text('Home', style: TextStyle(fontSize: 15)),
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
                      const Text('Hotel', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Container(
                    //padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Name'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    //padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: '+91  Mobile Number'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                  height: 10,
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
                  height: 10,
                ),
                Container(
                    //padding: const EdgeInsets.all(10),
                    child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Nearby Landmark (Optional)'),
                )),
                SizedBox(height: 20),
                Center(
                  child: RoundedButton(
                    // width: MediaQuery.of(context).size.width/1.2,
                    onPressed: () {
                      addAddress();
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
