import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Common/helper.dart';
import '../utils/linear_background.dart';
import '../utils/rounded_button.dart';
import 'package:http/http.dart' as http;
import 'package:otp_timer_button/otp_timer_button.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  OtpTimerButtonController controller = OtpTimerButtonController();
  bool isLoading = false;

  Future<void> sendingOtp() async {
    setState(() {
      isLoading = true; // Show loader when API call starts
    });

    print("Fetching user data...");

    try {
      final response = await http.post(
        Uri.parse('${Helpers.baseUrl}${Helpers.signup}'),
        body: {
          // "mobile": phoneNumberController.text,
          // "email": emailController.text
          "mobile": "9666033750",
          "otp": "1111"
        },
      );

      if (response.statusCode == 200) {
        print("API response received with status code 200");

        Map<String, dynamic> responseData = json.decode(response.body);
        String msg = responseData['message'];

        setState(() {
          // if(signup == false)
          //   decodedOTP = decodeBase64OTP(otp);
          isLoading = false;
        });
        Get.defaultDialog(
          confirmTextColor: Colors.white,
          title: msg,
          middleText: '',
          onConfirm: () {
            Get.back();
          },
        );
      } else {
        print("Failed to fetch data. Status code: ${response.statusCode}");
        setState(() {
          isLoading = false; // Hide loader if API call fails
        });

        Get.defaultDialog(
          confirmTextColor: Colors.white,
          title: 'Error',
          middleText: '',
          onConfirm: () {
            Get.back();
          },
        );

        throw Exception('Failed to load data');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print("An error occurred: $e");
      Get.defaultDialog(
        confirmTextColor: Colors.white,
        title: 'Big Error',
        middleText: '',
        onConfirm: () {
          Get.back();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LinearBackground(
        child: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OTP Verification',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'We will send you a one time password on this Mobile Number.',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '+91-8121213346',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 44),
                  Center(
                      child: SizedBox(
                          height: 250,
                          width: 250,
                          child: Image.asset('assets/images/otp.png'))),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int a = 0; a < 4; a++) ...[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: const SizedBox(
                            height: 50,
                            width: 30,
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ],
                  ),
                  // Center(
                  //   child: OTPtimer(
                  //     backgroundColor: Colors.white,
                  //     onPressed: () {},
                  //     controller: controller,
                  //     text: Text(''),
                  //     duration: Duration.secondsPerMinute,
                  //     textColor: Colors.white,
                  //   ),
                  // ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Do not send OTP? ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: const Text(
                          'Send OTP',
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  RoundedButton(
                    onPressed: () {
                      sendingOtp();
                    },
                    name: 'Submit',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          // const SizedBox(height: 5),
        ],
      ),
    ));
  }
}
