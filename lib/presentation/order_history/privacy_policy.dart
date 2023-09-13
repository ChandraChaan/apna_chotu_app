import 'package:apna_chotu_app/common/app_text.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              horizontalTitleGap: -6,
              leading: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              title: CommonText(
                'Privacy Policy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
