import 'package:apna_chotu_app/common/app_text.dart';
import 'package:apna_chotu_app/utils/menu_tabs.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiscOrderCreate extends StatefulWidget {
  const MiscOrderCreate({super.key});

  @override
  State<MiscOrderCreate> createState() => _MiscOrderCreateState();
}

class _MiscOrderCreateState extends State<MiscOrderCreate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: -7,
                  contentPadding: EdgeInsets.all(0),
                  leading: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text16BlackBld('Misc Services'),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                          child: Icon(
                            Icons.search,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text10Black(
                      '100 Feet Rd, Madhapur,\nHyderabad,Telangana 500081'),
                ),
                Container(
                  height: 93,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0XFFFA6423), Color(0xFF9A2D08)])),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText('Bathroom',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        CommonText('Cleaning Services',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                MenuTabs(),
                SizedBox(height: 10),
                Text16BlackBld('Please enter your issue'),
                SizedBox(height: 10),
                Container(
                  height: 65,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter your issue'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 44,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.calendar_today),
                            // Use an Icon as a prefix
                            labelText: 'Select Date',
                          ), // Add a label or hint text
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        height: 44,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              suffixIcon: Icon(Icons.schedule),
                              labelText: 'Choose Time'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7),
                Container(
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: Icon(Icons.phone),
                        hintText: 'Enter Mobile Number'),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.near_me,
                        color: Colors.deepOrange,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text12OrangeBld('Use My Current Location'),
                        Text14Black('Rahimpura, Dattatreya Nagar, Hyderabad'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(thickness: 2),
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add,
                        size: 18,
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                      height: 10,
                    ),
                    Text12OrangeBld('Add New Address')
                  ],
                ),
                SizedBox(height: 10),
                Divider(thickness: 2),
                SizedBox(height: 10),
                RoundedButton(onPressed: () {}, name: 'Create Your Order')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
