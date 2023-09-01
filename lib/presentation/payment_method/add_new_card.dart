import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14))),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                    'Add New Card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 19),
                    child: Container(
                      //padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Name on the card'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      //padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Card Number'),
                      ),
                    ),
                  ),SizedBox(height: 12),
                  Container(
                    height: 40,
                    width: 140,
                    child: RoundedButton(onPressed: (){},
                    name: 'Add Card'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
