import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/rounded_button.dart';

class OthersAddress extends StatefulWidget {
  const OthersAddress({super.key});

  @override
  State<OthersAddress> createState() => OthersAddressState();
}

class OthersAddressState extends State<OthersAddress> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 45),
          onPressed: () {
            Get.back();
          },
        ),
              title: Text('Add New Address',style: TextStyle(color: Colors.black),)
      ),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 18, top: 15),
              child: Text(
                'Who are you ordering for?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.deepOrange),
              ),
            ),
            Row(
              children: [
                Radio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                        // print(_value);
                        // print('this is updated value');
                      });
                    }),
                const Text('Myself', style: TextStyle(fontSize: 15)),
                Radio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                        // print(_value);
                        // print('this is updated value');
                      });
                    }),
                const Text('Others', style: TextStyle(fontSize: 15)),
              ],
            ),
            Container(
              //padding: const EdgeInsets.all(10),
              child: _value == 2? TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Name'),
              ):null,
            ),SizedBox(height: _value ==3?1: 10,),
            Container(
              //padding: const EdgeInsets.all(10),
              child: _value == 2? TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: '+91  Mobile Number'),
              ):null,
            ),SizedBox(height: _value == 4?1: 10,),
            Container(
              //padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Complete Address*'),
              ),
            ),SizedBox(height: 10,),
            Container(
               // padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Floor (Optional)'),
                )),SizedBox(height: 10,),
            Container(
                //padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Nearby Landmark (Optional)'),
                )),SizedBox(height: 20),
            Center(
              child: RoundedButton(
                // width: MediaQuery.of(context).size.width/1.2,
                onPressed: () {},
                name: 'Save Address',
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
