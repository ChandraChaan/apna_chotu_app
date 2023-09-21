import 'package:flutter/material.dart';
import 'package:payu_checkoutpro_flutter/PayUConstantKeys.dart';
import 'package:payu_checkoutpro_flutter/payu_checkoutpro_flutter.dart';

import 'HashServices.dart';



class PayuPayment extends StatefulWidget {
  const PayuPayment({Key? key}) : super(key: key);

  @override
  State<PayuPayment> createState() => _PayuPaymentState();
}

class _PayuPaymentState extends State<PayuPayment> implements PayUCheckoutProProtocol {

  late PayUCheckoutProFlutter _checkoutPro;

  @override
  void initState() {
    super.initState();
    _checkoutPro = PayUCheckoutProFlutter(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PayU Checkout Pro'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text("Start Payment"),
            onPressed: () async {
              _checkoutPro.openCheckoutScreen(
                payUPaymentParams: PayUParams.createPayUPaymentParams(),
                payUCheckoutProConfig: PayUParams.createPayUConfigParams(),
              );
            },
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context, String title, String content) {
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: new Text(content),
            ),
            actions: [okButton],
          );
        });
  }

  @override
  generateHash(Map response) {
    // Pass response param to your backend server
    // Backend will generate the hash and will callback to
    Map hashResponse = HashService.generateHash(response);
    _checkoutPro.hashGenerated(hash: hashResponse);
  }

  @override
  onPaymentSuccess(dynamic response) {
    showAlertDialog(context, "onPaymentSuccess", response.toString());
  }

  @override
  onPaymentFailure(dynamic response) {
    showAlertDialog(context, "onPaymentFailure", response.toString());
  }

  @override
  onPaymentCancel(Map? response) {
    showAlertDialog(context, "onPaymentCancel", response.toString());
  }

  @override
  onError(Map? response) {
    showAlertDialog(context, "onError", response.toString());
  }
}

class PayUTestCredentials {
  static const merchantKey = "Wn0jYR";//TODO: Add Merchant Key
  //Use your success and fail URL's.

  static const iosSurl = "https://payu.herokuapp.com/ios_success";//TODO: Add Success URL.
  static const iosFurl = "https://payu.herokuapp.com/ios_failure";//TODO Add Fail URL.
  static const androidSurl = "https://payu.herokuapp.com/success";//TODO: Add Success URL. 
  static const androidFurl = "https://payu.herokuapp.com/failure";//TODO Add Fail URL.


  static const merchantAccessKey = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDFGZ1veYHrq/9uUT58e+4Nz7lHjyJ8aPB6TL0qM/fCCdAH0siCHkD7l6ENHnojMmhYq9QjdnJ6q0zeQSi86YUl7f/CGIvyL8AwsNTrW+Di8jWum8fj170ZlvOIxaYr6lmVIWtWRumf4VBE3YXHmQeJaJijl0cSJeD2jDqImPeFnGtHEaZ6CRgLeiO4rXX9pX09DUFW4K5MldgqyYJSSXi+kepViADM4tzFvt+kvO4frUKuQ9RakdovYVpnWTEkw9T4qZj85liiBWK/JWPAhiK1bpzLfIK6B8WqzMtOaoFnoN7G87SafRIV4r8eN3jeLio0rDFOQifaI4WEXd9JisNXAgMBAAECggEAEG4FMKCpUtLglPqSwd+2xVH2eN+WmVZKDXfOIPF6CqO0wqIwcqBA/Hf0RdqvhbWS+yk/osEh49XZr4Ew+yZgIfxH4I8ZQ1P1qlljNkdPZLuZ+/ciX3zBV5u8qz8GjgyX8RV7FBMPMHOgtEze9PdtqGeeqaxXkUy1BvhDfNV7dJii6YmILtqi0nQpf3n+fSmr5gvz5JacNW/id0yhJL6Tzz/6DkT7lzwRl1c7AoRON/mXj9473yltOCCPrZ1R3e+PMLDD4g9Kq1XZo7WgXFC4Ag5iEQu0ckNHYTJ6cnnGG3EgAFOK+ukncmNeTT3prZ8KTb3nqjNPrZxw1GA59zB2AQKBgQDhgTBEJcXuzhLJcbET2VT/xflngygjgusa7X05IswZXwm152IjpgvJomzQIVM1RzOvAGF+/hhAiFOcFgrxstkJRY9iqeysfweZEf7VFPQ4nG8DV3ZlrNAazHPqPrpnZGeo243H3s4ggbt3S2t4BbXmXOBlykRttkcnBDo4+ekSVwKBgQDfwRRtsr3ziIWsfOZESMO3uehp8fgkQRxJiCFLOtfVqF0UIbdfdgz5BHKcw2jwFMsi3S0WpKBiDMBusWrDcInJxEFoYSp3k5LCVwIYrXzP3b+I/Co4U3l6BHObPbHa4ZENvR8CmIgUUu6X+TZtfZK+rNCmQaMyq2Ba5p74lDc3AQKBgQCXwaEBu4ngk74A4woQGYoiNtEI4DL68vfVP02uTcScrmCSkgxxgSUdpLklt8ePa0NU2iTCma0ogJYDzLHAxmNY4f8EnuYvj61FTd749wkDsALldM6wzgOehUjcsyouulsoP9jCUSbWqXfHaHICa5VmWcqJtf0m+CwaDbZA8a3wMQKBgQCzbZe+KBme0xmuqjHVDCy2hkRTwQ/lsrjGVn2sYDF4Shzp6eesi3P3tJNcFm9uJp6HBKoFgFqEhglCOs+MjhBQVirFUzXE0fhcE33A4E44OnA/n0cUCAxfxnYWRTD8fundBI17fWmSMrbV86irwIkOknJ3ACeomDkaa9mLKP/mAQKBgAsbu6uelB6kKcNU0NYQz4CQQ7LhiAIhDOQbkR7T+T6CbwsZtp2nfuPFu5SiZhaZz884QKFbP539jOFnOjkHM2n10wYueys2w1WGZJoq7K5viYuEMalnPg1kndtl6LmJqaSu6CWCSnluAqWQ6X/jn9tzAgnhLUtdGpmfeXjjMS/X";//TODO: Add Merchant Access Key - Optional
  static const sodexoSourceId = "T73QXre5AkYRnB1EgPVukwUCZiffmwjv"; //TODO: Add sodexo Source Id - Optional
}

//Pass these values from your app to SDK, this data is only for test purpose
class PayUParams {
  static Map createPayUPaymentParams() {
    var siParams = {
      PayUSIParamsKeys.isFreeTrial: true,
      PayUSIParamsKeys.billingAmount: '1',              //Required
      PayUSIParamsKeys.billingInterval: 1,              //Required
      PayUSIParamsKeys.paymentStartDate: '2023-09-15',  //Required
      PayUSIParamsKeys.paymentEndDate: '2023-10-12',    //Required
      PayUSIParamsKeys.billingCycle:                    //Required
      'daily', //Can be any of 'daily','weekly','yearly','adhoc','once','monthly'
      PayUSIParamsKeys.remarks: 'Test SI transaction',
      PayUSIParamsKeys.billingCurrency: 'INR',
      PayUSIParamsKeys.billingLimit: 'ON', //ON, BEFORE, AFTER
      PayUSIParamsKeys.billingRule: 'MAX', //MAX, EXACT
    };

    var additionalParam = {
      PayUAdditionalParamKeys.udf1: "udf1",
      PayUAdditionalParamKeys.udf2: "udf2",
      PayUAdditionalParamKeys.udf3: "udf3",
      PayUAdditionalParamKeys.udf4: "udf4",
      PayUAdditionalParamKeys.udf5: "udf5",
      PayUAdditionalParamKeys.merchantAccessKey:
      PayUTestCredentials.merchantAccessKey,
      PayUAdditionalParamKeys.sourceId:PayUTestCredentials.sodexoSourceId,
    };


    var spitPaymentDetails =
    {
      "type": "absolute",
      "splitInfo": {
        PayUTestCredentials.merchantKey: {
          "aggregatorSubTxnId": "1234567540099887766650092", //unique for each transaction
          "aggregatorSubAmt": "1"
        },
        /* "qOoYIv": {
          "aggregatorSubTxnId": "12345678",
          "aggregatorSubAmt": "40"
       },*/
      }
    };


    var payUPaymentParams = {
      PayUPaymentParamKey.key: PayUTestCredentials.merchantKey,
      PayUPaymentParamKey.amount: "1",
      PayUPaymentParamKey.productInfo: "Info",
      PayUPaymentParamKey.firstName: "apnachotu",
      PayUPaymentParamKey.email: "ceo@apnachotu.com",
      PayUPaymentParamKey.phone: "9849953848",
      PayUPaymentParamKey.ios_surl: PayUTestCredentials.iosSurl,
      PayUPaymentParamKey.ios_furl: PayUTestCredentials.iosFurl,
      PayUPaymentParamKey.android_surl: PayUTestCredentials.androidSurl,
      PayUPaymentParamKey.android_furl: PayUTestCredentials.androidFurl,
      PayUPaymentParamKey.environment: "0", //0 => Production 1 => Test
      PayUPaymentParamKey.userCredential: null, //TODO: Pass user credential to fetch saved cards => A:B - Optional
      PayUPaymentParamKey.transactionId:
      DateTime.now().millisecondsSinceEpoch.toString(),
      PayUPaymentParamKey.additionalParam: additionalParam,
      PayUPaymentParamKey.enableNativeOTP: true,
      // PayUPaymentParamKey.splitPaymentDetails:json.encode(spitPaymentDetails),
      PayUPaymentParamKey.userToken:"", //TODO: Pass a unique token to fetch offers. - Optional
    };

    return payUPaymentParams;
  }

  static Map createPayUConfigParams() {
    var paymentModesOrder = [
      {"Wallets": "PHONEPE"},
      {"UPI": "TEZ"},
      {"Wallets": ""},
      {"EMI": ""},
      {"NetBanking": ""},
    ];

    var cartDetails = [
      {"GST": "5%"},
      {"Delivery Date": "25 Dec"},
      {"Status": "In Progress"}
    ];
    var enforcePaymentList = [
      {"payment_type": "CARD", "enforce_ibiboCode": "UTIBENCC"},
    ];

    var customNotes = [
      {
        "custom_note": "Its Common custom note for testing purpose",
        "custom_note_category": [PayUPaymentTypeKeys.emi,PayUPaymentTypeKeys.card]
      },
      {
        "custom_note": "Payment options custom note",
        "custom_note_category": null
      }
    ];

    var payUCheckoutProConfig = {
      PayUCheckoutProConfigKeys.primaryColor: "#4994EC",
      PayUCheckoutProConfigKeys.secondaryColor: "#FFFFFF",
      PayUCheckoutProConfigKeys.merchantName: "PayU",
      PayUCheckoutProConfigKeys.merchantLogo: "logo",
      PayUCheckoutProConfigKeys.showExitConfirmationOnCheckoutScreen: true,
      PayUCheckoutProConfigKeys.showExitConfirmationOnPaymentScreen: true,
      PayUCheckoutProConfigKeys.cartDetails: cartDetails,
      PayUCheckoutProConfigKeys.paymentModesOrder: paymentModesOrder,
      PayUCheckoutProConfigKeys.merchantResponseTimeout: 30000,
      PayUCheckoutProConfigKeys.customNotes: customNotes,
      PayUCheckoutProConfigKeys.autoSelectOtp: true,
      // PayUCheckoutProConfigKeys.enforcePaymentList: enforcePaymentList,
      PayUCheckoutProConfigKeys.waitingTime: 30000,
      PayUCheckoutProConfigKeys.autoApprove: true,
      PayUCheckoutProConfigKeys.merchantSMSPermission: true,
      PayUCheckoutProConfigKeys.showCbToolbar: true,
    };
    return payUCheckoutProConfig;
  }
}