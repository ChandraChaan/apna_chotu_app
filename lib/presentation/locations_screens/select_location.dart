import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:apna_chotu_app/presentation/dashboard/main_home_screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../common/app_text.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  void editAddress(int index) {
    // Handle edit action for the address at the given index
    // You can navigate to an edit screen or perform other actions here
    // Example: navigate to the edit screen with the selected address
    Get.toNamed(Routes.othersAddress, arguments: addressList[index]);

    // Define the edit address action here
    // You can navigate to an edit address screen or perform other actions
  }

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
                          Icons.arrow_back_ios,
                          size: 25,
                        )),
                    CommonText(
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
                  Get.toNamed(Routes.dashBoardScreen);
                },
                leading: const Icon(
                  Icons.near_me,
                  color: Colors.deepOrange,
                ),
                title: const CommonText(
                  'Use My Current Location',
                  style: TextStyle(color: Colors.deepOrange, fontSize: 14),
                ),
                // subtitle: const CommonText('Rahimpur, Dattatreya Nagar, Hyderabad'),
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
                title: const CommonText(
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
              //       child: CommonText(
              //         'Nearby Location',
              //         style: TextStyle(color: Colors.deepOrange),
              //       ),
              //     ),
              //     ListTile(
              //       minLeadingWidth: 0,
              //       leading: Icon(Icons.location_on, color: Colors.deepOrange),
              //       title: Padding(
              //         padding: EdgeInsets.only(top: 13),
              //         child: CommonText(
              //           'Petals Accessories',
              //         ),
              //       ),
              //       subtitle: CommonText(
              //           'Karwan Road, Rahimpura, Dattatreya Nagar, Hyderabad'),
              //     ),
              //   ],
              // ),
              // const Divider(thickness: 1),
              if (addressList.isNotEmpty)
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: CommonText(
                    'Recent Location',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              for (int a = 0; a < addressList.length; a++)
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.location_on, color: Colors.deepOrange),
                  title: CommonText(
                    addressList[a]['locality'],
                  ),
                  subtitle: CommonText(addressList[a]['address_name']),
                  trailing: InkWell(
                    onTap: () => editAddress(a),
                    child: Icon(
                      Icons.edit,
                      color: Colors.deepOrange,
                    ),
                  ),
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
