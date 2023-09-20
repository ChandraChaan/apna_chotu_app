import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

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
                      'Invite Friends',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2),
              SizedBox(height: 17),
              CommonText(
                'Let’s invite friends to try Apna Chotu',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.deepOrange),
              ),
              SizedBox(height: 5),
              CommonText(
                'So they can benefit by experiencing Apna Chotu and its perks, just like you!',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 15),
              Center(
                child: Container(
                  height: 40,
                  width: 130,
                  child: RoundedButton(
                    name: '',
                    child: CommonText(
                      'Invite Friends',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(height: 15),
              CommonText(
                'Hey have you tried Apna Chotu App? It really helps me save time and energy.',
                style: TextStyle(fontSize: 10),
              ),SizedBox(height: 15),
              Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/invite.png'))),
              ),
              Divider(thickness: 2),
              SizedBox(height: 15),
              Container(
                height: 68,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/whatsup.png'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
