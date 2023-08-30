import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../utils/rounded_button.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  List<dynamic> addressList = [];

  final LocalDb = GetStorage();
  void fetchAddress() async {
    final url = 'https://openteqdev.com/Apnachotu_dev/api/user/fecth_address';

    final body = {'user_id': '${LocalDb.read('userid')}'};

    final response = await http.post(
      Uri.parse(url),
      body: body,
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // Now you can access the data in jsonResponse as needed.
      // For example, to access the "address" list:

      setState(() {
        addressList = jsonResponse['address'];
      });
    } else {
      // Handle error here, e.g., print an error message.
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    fetchAddress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          size: 28,
                        )),
                    Text(
                      'Select a Location',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.mic,
                        size: 30,
                        color: Colors.deepOrange,
                      ),
                      onPressed: () {
                        // Perform voice search action
                      },
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
              const Divider(thickness: 1),
              ListTile(
                minLeadingWidth: 0,
                onTap: () {
                  Get.toNamed(Routes.mapScreen);
                },
                leading: const Icon(
                  Icons.near_me,
                  color: Colors.deepOrange,
                ),
                title: const Text(
                  'Use My Current Location',
                  style: TextStyle(color: Colors.deepOrange, fontSize: 14),
                ),
                // subtitle: const Text('Rahimpur, Dattatreya Nagar, Hyderabad'),
              ),
              const Divider(thickness: 1),
              ListTile(
                minLeadingWidth: 0,
                onTap: () {
                  Get.toNamed(Routes.mapScreen);
                },
                leading: const Icon(
                  Icons.add_sharp,
                  color: Colors.deepOrange,
                ),
                title: const Text(
                  'Add New Address',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              const Divider(thickness: 1),
              // const Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(left: 13),
              //       child: Text(
              //         'Nearby Location',
              //         style: TextStyle(color: Colors.deepOrange),
              //       ),
              //     ),
              //     ListTile(
              //       minLeadingWidth: 0,
              //       leading: Icon(Icons.location_on, color: Colors.deepOrange),
              //       title: Padding(
              //         padding: EdgeInsets.only(top: 13),
              //         child: Text(
              //           'Petals Accessories',
              //         ),
              //       ),
              //       subtitle: Text(
              //           'Karwan Road, Rahimpura, Dattatreya Nagar, Hyderabad'),
              //     ),
              //   ],
              // ),
              // const Divider(thickness: 1),
              if (addressList.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text(
                    'Recent Location',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              for (int a = 0; a < addressList.length; a++)
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.location_on, color: Colors.deepOrange),
                  title: Text(
                    addressList[a]['locality'],
                  ),
                  subtitle: Text(addressList[a]['address_name']),
                ),
              if (addressList.isNotEmpty) Divider(thickness: 1),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
