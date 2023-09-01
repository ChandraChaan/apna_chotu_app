import 'package:flutter/material.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 190),
          child: Column(
            children: [
              Center(
                  child: Text('Thank you!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: Colors.green))),
              SizedBox(height: 10),
              Text('Your order is Successfully Confirmed',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 18),
              Container(
                  height: 210,
                  child: Image.asset('assets/images/group_3204.png')),
              Text(
                'Please check your booking status at your order page',style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
