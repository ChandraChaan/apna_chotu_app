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
            Container(
                child: CommonText(
                 'Last updated on July 18, 2023. Apna Chotu Limited and/or its affiliates ("Apna Chotu," the "Company," "we," "us," and "our,") respect your privacy and is committed to protecting it through its compliance with its privacy policies. This policy describes: the types of information that Apna Chotu may collect from you when you access or use its websites, applications and other online services (collectively, referred as "Services"); and its practices for collecting, using, maintaining, protecting and disclosing that information. This policy applies only to the information Apna Chotu collects through its Services, in email, text and other electronic communications sent through or in connection with its Services.  This policy DOES NOT apply to information that you provide to, or that is collected by, any third-party, such as restaurants at which you make reservations and/or pay through Apna Chotu Services and social networks that you use in connection with its Services. Apna Chotu encourages you to consult directly with such third-parties about their privacy practices.  Please read this policy carefully to understand Apna Chotu policies and practices regarding your information and how Apna Chotu will treat it. By accessing or using its Services and/or registering for an account with Apna Chotu, you agree to this privacy policy and you are consenting to Apna Chotu collection, use, disclosure, retention, and protection of your personal information as described here. If you do not provide the information Apna Chotu requires, Apna Chotu may not be able to provide all of its Services to you.  If you reside in a country within the European Union/European Economic Area (EAA), Apna Chotu Media Portugal, Unipessoal LDA , located at Avenida 24 de Julho, N 102-E, 1200-870, Lisboa, Portugal, will be the controller of your personal data provided to, or collected by or for, or processed in connection with our Services;  If you reside in United States of America, Apna Chotu USA LLC, located at 7427 Matthews Mint Hill Rd., STE 105, #324, Mint Hill, NC 28227 will be the controller of your personal data provided to, or collected by or for, or processed in connection with our Services;  If you reside in any other part of the world, Your data controller is responsible for the collection, use, disclosure, retention, and protection of your personal information in accordance with its privacy standards as well as any applicable national laws. Your data controller may transfer data to other members of Apna Chotu as described in this Privacy Policy. Apna Chotu may process and retain your personal information on its servers in India where its data centers are located, and/or on the servers of its third parties (in or outside India), having contractual relationships with Apna Chotu.  This policy may change from time to time, your continued use of Apna Chotu Services after it makes any change is deemed to be acceptance of those changes, so please check the policy periodically for updates.'
                )
            )
          ],
        ),
      ),
    );
  }
}
