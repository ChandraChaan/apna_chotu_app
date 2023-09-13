import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_text.dart';

class AddressNotFound extends StatelessWidget {
  const AddressNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.highlight_off,
                            color: Colors.deepOrange,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 144,
                      child: Image.asset('assets/images/motel.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonText(
                          'Apna Chotu service is not available in this city',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 6),
                      CommonText(
                        'But, When we are available in your city,we will notify you',
                        style: TextStyle(fontSize: 12),
                      ),

                    ],
                  ),
                  SizedBox(height: 40),
                  RoundedButton(
                      height: 40,
                      width: 210,
                      onPressed: () {},
                      name: 'Change Location')
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
