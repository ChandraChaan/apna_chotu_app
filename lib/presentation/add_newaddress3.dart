import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewAddressScreen extends StatefulWidget {
  const NewAddressScreen({super.key});

  @override
  State<NewAddressScreen> createState() => _NewAddressScreenState();
}

class _NewAddressScreenState extends State<NewAddressScreen> {
  int _value = 1;
  int _values = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.chevron_left,
                  size: 25,
                ),
                padding: const EdgeInsets.all(0),
                splashRadius: 0.2,
                onPressed: () {
                  //back screen
                  Get.back();
                },
              ),
              const Text(
                'Add New Address',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
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
                    });
                  }),
              const Text('Myself', style: TextStyle(fontSize: 15)),
              Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  }),
              const Text('Others', style: TextStyle(fontSize: 15)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 18),
            child: Text(
              'Save address as?',
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
                  groupValue: _values,
                  onChanged: (value) {
                    setState(() {
                      _values = value!;
                    });
                  }),
              const Text('Home', style: TextStyle(fontSize: 15)),
              Radio(
                  value: 2,
                  groupValue: _values,
                  onChanged: (value) {
                    setState(() {
                      _values = value!;
                    });
                  }),
              const Text('Work', style: TextStyle(fontSize: 15)),
              Radio(
                  value: 3,
                  groupValue: _values,
                  onChanged: (value) {
                    setState(() {
                      _values = value!;
                    });
                  }),
              const Text('Hotel', style: TextStyle(fontSize: 15)),
              Radio(
                  value: 4,
                  groupValue: _values,
                  onChanged: (value) {
                    setState(() {
                      _values = value!;
                    });
                  }),
              const Text('Others', style: TextStyle(fontSize: 15)),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Complete Address*'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Floor (Optional)'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Nearby Landmark (Optional)'),
            ),
          ),
        ],
      ),
    ));
  }
}
