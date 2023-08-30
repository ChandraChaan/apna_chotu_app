import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

class AddressNotFound extends StatefulWidget {
  const AddressNotFound({super.key});

  @override
  State<AddressNotFound> createState() => _AddressNotFoundState();
}

class _AddressNotFoundState extends State<AddressNotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 370,
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
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      height: 144,
                      child: Image.asset('assets/images/motel.png'),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.highlight_off))
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Text('Apna Chotu service is not available in this city',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22)),
                        SizedBox(height: 6),
                        Text(
                          'But, When we are available in your city,we will notify you',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(height: 20),
                        RoundedButton(
                            height: 40,
                            width: 210,
                            onPressed: () {},
                            name: 'Change Location')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
