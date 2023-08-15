import 'package:apna_chotu_app/Infrastructure/auth_param.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../Common/Loader.dart';
import '../../Config/app_pages.dart';
import '../../Provider/apna_chota_app_adapter.dart';

class AuthController extends GetxController {
  AuthController({required this.apnaChotuRepository});

  /// inject repo abstraction dependency
  final IApnaChotuAppRepository apnaChotuRepository;
  String userNameValue = '';
  String profilePic = '';
  String role = '';
  final LocalDb = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // callAPI();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  callAPI({required String phone, String? email}) {
    Loader.show();
    apnaChotuRepository
        .dynamic(AuthParam(phone: phone, email: email))
        .then((data) {
      Get.back();
      // userNameValue = data.results['first_name'].toString() +
      //     (data.results['last_name'].toString() == "null"
      //         ? "None"
      //         : data.results['last_name'].toString());
      //
      // LocalDb.write('userid', '${data.results['data']['id'].toString()}');
      Get.toNamed(Routes.intro);
    }, onError: (err) {
      Get.back();
      Get.snackbar(
        "Check Credential\'s once",
        " and try again",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
    });
  }
}
