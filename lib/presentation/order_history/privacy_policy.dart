import 'package:apna_chotu_app/common/app_text.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            minVerticalPadding: 0,
            minLeadingWidth: 0,
            horizontalTitleGap: -10,
            leading: Icon(Icons.arrow_back_ios),
            title: CommonText(
              'Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
