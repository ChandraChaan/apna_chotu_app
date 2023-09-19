import 'package:apna_chotu_app/common/app_text.dart';
import 'package:apna_chotu_app/presentation/payment_method/add_new_card.dart';
import 'package:apna_chotu_app/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payu_checkoutpro_flutter/PayUConstantKeys.dart';
import 'package:payu_checkoutpro_flutter/payu_checkoutpro_flutter.dart';

import 'HashServices.dart';

class PayuPayment extends StatefulWidget {
  const PayuPayment({Key? key}) : super(key: key);

  @override
  State<PayuPayment> createState() => _PayuPaymentState();
}

class _PayuPaymentState extends State<PayuPayment>
    implements PayUCheckoutProProtocol {
  late PayUCheckoutProFlutter _checkoutPro;

  @override
  void initState() {
    super.initState();
    _checkoutPro = PayUCheckoutProFlutter(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: -12,
                contentPadding: EdgeInsets.all(0),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: CommonText(
                  'Checkout',
                  style: UInormalStyle,
                ),
                subtitle: CommonText('2 items, Total: ₹ 225'),
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0XFFFA6423), Color(0xFF9A2D08)],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.brightness_1_outlined,
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          CommonText(
                            'Palamuru Grill | ',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          CommonText(
                            'Delivery in: 33 mins',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.brightness_1_outlined,
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          CommonText(
                            'Office | Q2, 6th Floor, Cyber Tower, Hitech City',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText(
                      'UPI',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: CommonText(
                            '+Add New UPI ID',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddNewCard()));
                          },
                        ),
                        CommonText(
                          'You need to have a registered UPI ID',
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  child: const Text("Start Payment"),
                  onPressed: () async {
                    _checkoutPro.openCheckoutScreen(
                      payUPaymentParams: PayUParams.createPayUPaymentParams(),
                      payUCheckoutProConfig:
                          PayUParams.createPayUConfigParams(),
                    );
                  },
                ),
              ),
            ],
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
  static const merchantKey = "8522235"; //TODO: Add Merchant Key
  //Use your success and fail URL's.

  static const iosSurl =
      "https://payu.herokuapp.com/ios_success"; //TODO: Add Success URL.
  static const iosFurl =
      "https://payu.herokuapp.com/ios_failure"; //TODO Add Fail URL.
  static const androidSurl =
      "https://payu.herokuapp.com/success"; //TODO: Add Success URL.
  static const androidFurl =
      "https://payu.herokuapp.com/failure"; //TODO Add Fail URL.

  static const merchantAccessKey =
      ""; //TODO: Add Merchant Access Key - Optional
  static const sodexoSourceId = ""; //TODO: Add sodexo Source Id - Optional
}

//Pass these values from your app to SDK, this data is only for test purpose
class PayUParams {
  static Map createPayUPaymentParams() {
    var siParams = {
      PayUSIParamsKeys.isFreeTrial: true,
      PayUSIParamsKeys.billingAmount: '1',
      //Required
      PayUSIParamsKeys.billingInterval: 1,
      //Required
      PayUSIParamsKeys.paymentStartDate: '2023-09-15',
      //Required
      PayUSIParamsKeys.paymentEndDate: '2023-09-15',
      //Required
      PayUSIParamsKeys.billingCycle: //Required
          'daily',
      //Can be any of 'daily','weekly','yearly','adhoc','once','monthly'
      PayUSIParamsKeys.remarks: 'Test SI transaction',
      PayUSIParamsKeys.billingCurrency: 'INR',
      PayUSIParamsKeys.billingLimit: 'ON',
      //ON, BEFORE, AFTER
      PayUSIParamsKeys.billingRule: 'MAX',
      //MAX, EXACT
    };

    var additionalParam = {
      PayUAdditionalParamKeys.udf1: "udf1",
      PayUAdditionalParamKeys.udf2: "udf2",
      PayUAdditionalParamKeys.udf3: "udf3",
      PayUAdditionalParamKeys.udf4: "udf4",
      PayUAdditionalParamKeys.udf5: "udf5",
      PayUAdditionalParamKeys.merchantAccessKey:
          PayUTestCredentials.merchantAccessKey,
      PayUAdditionalParamKeys.sourceId: PayUTestCredentials.sodexoSourceId,
    };

    var spitPaymentDetails = {
      "type": "absolute",
      "splitInfo": {
        PayUTestCredentials.merchantKey: {
          "aggregatorSubTxnId": "1234567540099887766650092",
          //unique for each transaction
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
      PayUPaymentParamKey.environment: "0",
      //0 => Production 1 => Test
      PayUPaymentParamKey.userCredential: null,
      //TODO: Pass user credential to fetch saved cards => A:B - Optional
      PayUPaymentParamKey.transactionId:
          DateTime.now().millisecondsSinceEpoch.toString(),
      PayUPaymentParamKey.additionalParam: additionalParam,
      PayUPaymentParamKey.enableNativeOTP: true,
      // PayUPaymentParamKey.splitPaymentDetails:json.encode(spitPaymentDetails),
      PayUPaymentParamKey.userToken: "",
      //TODO: Pass a unique token to fetch offers. - Optional
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
        "custom_note_category": [
          PayUPaymentTypeKeys.emi,
          PayUPaymentTypeKeys.card
        ]
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
