import 'package:apna_chotu_app/presentation/profile_screen/profile_screen.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  bool sendQuery = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
                      'Invite Friends',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: CommonText(
                      'Send a Query',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CommonText(
                      'Call to Customer Care',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                //padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Name'),
                ),
              ),
              SizedBox(height: 17),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '+91 Mobile Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              SizedBox(height: 17),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Email ID'),
                ),
              ),
              SizedBox(height: 17),
              Container(
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: 'Message'),
                ),
              ),
              SizedBox(height: 17),
              InkWell(
                onTap: (){setState(() {
                  sendQuery = true;
                });
                },
                child: Center(
                  child: Container(
                    height: 40,
                    width: 220,
                    child: RoundedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));

                      },
                      name: 'Submit Your Query',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17),
              Column(
                children: [
                  Center(
                    child: Image(
                        image: AssetImage('assets/images/contact_us.png')),
                  ),
                  SizedBox(height: 17),
                  Center(
                    child: CommonText(
                      '1800-1928 8392',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 17),
                  Center(
                    child: Container(
                      height: 35,
                      width: 130,
                      child: RoundedButton(
                        onPressed: () {},
                        name: 'Call Now',
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
