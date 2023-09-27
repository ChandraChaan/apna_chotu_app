// import 'dart:convert';
// import 'package:apna_chotu_app/utils/rounded_button.dart';
// import 'package:crypto/crypto.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_payu_unofficial/flutter_payu_unofficial.dart';
// import 'package:flutter_payu_unofficial/models/payment_params_model.dart';
// import 'package:flutter_payu_unofficial/models/payment_result.dart';
// import 'package:flutter_payu_unofficial/models/payment_status.dart';
// import 'dart:async';
//
// class PayuPayment extends StatefulWidget {
//   @override
//   _PayuPaymentState createState() => _PayuPaymentState();
// }
//
// class _PayuPaymentState extends State<PayuPayment> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   TextEditingController _merchantIDTextFieldController = TextEditingController(
//       text:
//           'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDFGZ1veYHrq/9uUT58e+4Nz7lHjyJ8aPB6TL0qM/fCCdAH0siCHkD7l6ENHnojMmhYq9QjdnJ6q0zeQSi86YUl7f/CGIvyL8AwsNTrW+Di8jWum8fj170ZlvOIxaYr6lmVIWtWRumf4VBE3YXHmQeJaJijl0cSJeD2jDqImPeFnGtHEaZ6CRgLeiO4rXX9pX09DUFW4K5MldgqyYJSSXi+kepViADM4tzFvt+kvO4frUKuQ9RakdovYVpnWTEkw9T4qZj85liiBWK/JWPAhiK1bpzLfIK6B8WqzMtOaoFnoN7G87SafRIV4r8eN3jeLio0rDFOQifaI4WEXd9JisNXAgMBAAECggEAEG4FMKCpUtLglPqSwd+2xVH2eN+N+WmVZKDXfOIPF6CqO0wqIwcqBA/Hf0RdqvhbWS+yk/osEh49XZr4Ew+yZgIfxH4I8ZQ1P1qlljNkdPZLuZ+/ciX3zBV5u8qz8GjgyX8RV7FBMPMHOgtEze9PdtqGeeqaxXkUy1BvhDfNV7dJii6YmILtqi0nQpf3n+fSmr5gvz5JacNW/id0yhJL6Tzz/6DkT7lzwRl1c7AoRON/mXj9473yltOCCPrZ1R3e+PMLDD4g9Kq1XZo7WgXFC4Ag5iEQu0ckNHYTJ6cnnGG3EgAFOK+ukncmNeTT3prZ8KTb3nqjNPrZxw1GA59zB2AQKBgQDhgTBEJcXuzhLJcbET2VT/xflngygjgusa7X05IswZXwm152IjpgvJomzQIVM1RzOvAGF+/hhAiFOcFgrxstkJRY9iqeysfweZEf7VFPQ4nG8DV3ZlrNAazHPqPrpnZGeo243H3s4ggbt3S2t4BbXmXOBlykRttkcnBDo4+ekSVwKBgQDfwRRtsr3ziIWsfOZESMO3uehp8fgkQRxJiCFLOtfVqF0UIbdfdgz5BHKcw2jwFMsi3S0WpKBiDMBusWrDcInJxEFoYSp3k5LCVwIYrXzP3b+I/Co4U3l6BHObPbHa4ZENvR8CmIgUUu6X+TZtfZK+rNCmQaMyq2Ba5p74lDc3AQKBgQCXwaEBu4ngk74A4woQGYoiNtEI4DL68vfVP02uTcScrmCSkgxxgSUdpLklt8ePa0NU2iTCma0ogJYDzLHAxmNY4f8EnuYvj61FTd749wkDsALldM6wzgOehUjcsyouulsoP9jCUSbWqXfHaHICa5VmWcqJtf0m+CwaDbZA8a3wMQKBgQCzbZe+KBme0xmuqjHVDCy2hkRTwQ/lsrjGVn2sYDF4Shzp6eesi3P3tJNcFm9uJp6HBKoFgFqEhglCOs+MjhBQVirFUzXE0fhcE33A4E44OnA/n0cUCAxfxnYWRTD8fundBI17fWmSMrbV86irwIkOknJ3ACeomDkaa9mLKP/mAQKBgAsbu6uelB6kKcNU0NYQz4CQQ7LhiAIhDOQbkR7T+T6CbwsZtp2nfuPFu5SiZhaZz884QKFbP539jOFnOjkHM2n10wYueys2w1WGZJoq7K5viYuEMalnPg1kndtl6LmJqaSu6CWCSnluAqWQ6X/jn9tzAgnhLUtdGpmfeXjjMS/X');
//   TextEditingController _merchantKeyTextFieldController =
//       TextEditingController(text: 'Wn0jYR');
//   TextEditingController _saltTextFieldController =
//       TextEditingController(text: 'T73QXre5AkYRnB1EgPVukwUCZiffmwjv');
//   TextEditingController _amountTextFieldController =
//       TextEditingController(text: "100");
//   TextEditingController _transactionIDTextFieldController =
//       TextEditingController(
//           text: DateTime.now().millisecondsSinceEpoch.toString());
//   TextEditingController _nameTextFieldController =
//       TextEditingController(text: "Test Name");
//   TextEditingController _productInfoTextFieldController =
//       TextEditingController(text: "Test Product");
//   TextEditingController _emailTextFieldController =
//       TextEditingController(text: "Test@test.com");
//
//   Future<void> pay() async {
//     PaymentParams _paymentParam = PaymentParams(
//       merchantID: _merchantIDTextFieldController.text,
//       merchantKey: _merchantKeyTextFieldController.text,
//       salt: _saltTextFieldController.text,
//       amount: _amountTextFieldController.text,
//       transactionID: _transactionIDTextFieldController.text,
//       firstName: _nameTextFieldController.text,
//       email: _emailTextFieldController.text,
//       productName: _productInfoTextFieldController.text,
//       phone: "9876543210",
//       fURL: "https://www.payumoney.com/mobileapp/payumoney/failure.php",
//       sURL: "https://www.payumoney.com/mobileapp/payumoney/success.php",
//       udf1: "udf1",
//       udf2: "udf2",
//       udf3: "udf3",
//       udf4: "udf4",
//       udf5: "udf5",
//       udf6: "",
//       udf7: "",
//       udf8: "",
//       udf9: "",
//       udf10: "",
//       hash: "",
//       //Hash is required will initialise with empty string now to set actuall hash later
//       isDebug: true, // true for Test Mode, false for Production
//     );
//
//     //Generating local hash
//     var bytes = utf8.encode(
//         "${_paymentParam.merchantKey}|${_paymentParam.transactionID}|${_paymentParam.amount}|${_paymentParam.productName}|${_paymentParam.firstName}|${_paymentParam.email}|udf1|udf2|udf3|udf4|udf5||||||${_paymentParam.salt}");
//     String localHash = sha512.convert(bytes).toString();
//     _paymentParam.hash = localHash;
//
//     try {
//       PayuPaymentResult _paymentResult =
//           await FlutterPayuUnofficial.initiatePayment(
//               paymentParams: _paymentParam, showCompletionScreen: true);
//
//       //Checks for success and prints result
//
//       if (_paymentResult != null) {
//         //_paymentResult.status is String of course. Directly fetched from payU's Payment response. More statuses can be compared manually
//
//         if (_paymentResult.status == PayuPaymentStatus.success) {
//           print("Success: ${_paymentResult.response}");
//         } else if (_paymentResult.status == PayuPaymentStatus.failed) {
//           print("Failed: ${_paymentResult.response}");
//         } else if (_paymentResult.status == PayuPaymentStatus.cancelled) {
//           print("Cancelled by User: ${_paymentResult.response}");
//         } else {
//           print("Response: ${_paymentResult.response}");
//           print("Status: ${_paymentResult.status}");
//         }
//       } else {
//         print("Something's rotten here");
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('PayU Money Example'),
//           ),
//           body: Center(
//             child: RoundedButton(
//               onPressed: pay,
//               name: 'PayU',
//             ),
//           )),
//     );
//   }
// }
