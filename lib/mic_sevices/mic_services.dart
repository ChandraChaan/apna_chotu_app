import 'package:apna_chotu_app/common/app_text.dart';
import 'package:apna_chotu_app/utils/menu_tabs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MicServices extends StatefulWidget {
  const MicServices({super.key});

  @override
  State<MicServices> createState() => _MicServicesState();
}

class _MicServicesState extends State<MicServices> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 2,
                horizontalTitleGap: -10,
                contentPadding: EdgeInsets.all(0),
                leading: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text16BlackBld('Mic Services'),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications))
                  ],
                ),
                subtitle: Text10Black('Hi-tech, Madhapur, Hyderabad'),
              ),
              SizedBox(height: 5),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              MenuTabs(),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text16BlackBld('Popular services near you'),
                  SizedBox(width: 5),
                  Container(
                    height: 17,
                    width: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange,
                    ),
                    child: Center(
                      child: CommonText(
                        'Show all',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.sort),
                  ),
                  Text10Black('Sort by')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
