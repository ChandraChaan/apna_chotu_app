import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    Text(
                      'Invite Friends',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2),
              SizedBox(height: 17),
              Text(
                'Let’s invite friends to try Apna Chotu',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.deepOrange),
              ),
              SizedBox(height: 5),
              Text(
                'So they can benefit by experiencing Apna Chotu and its perks, just like you!',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 40,
                  width: 180,
                  child: RoundedButton(
                    name: 'Invite Friends',
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Hey have you tried Apna Chotu App? It really helps me save time and energy.',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
