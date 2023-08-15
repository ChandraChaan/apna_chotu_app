import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:yujdesingssample/Common/helper.dart';
import 'package:yujdesingssample/Domain/DataClass/loginModel.dart';
import 'package:yujdesingssample/Network/NetworkDataClass.dart';
import 'package:yujdesingssample/Network/NetworkStrings.dart';

class LoginAPIModal {
  final String username;
  final String pasword;

  LoginAPIModal({this.pasword, this.username});

  Map<String, dynamic> toJsonResources() {
    return {"email": username, "password": pasword};
  }

  NetworkDataClass getParam() {
    return NetworkDataClass(
        baseUrl: Helpers.baseUrl,
        extendedUrl: Helpers.login,

        options: Options(
          headers: {"content-type": "application/json"},
        ),
        isCookie: false,
        param: jsonEncode(toJsonResources()),
        requestType: NetworkString.requestPost);
  }

  fromJson(val) => LoginModal.fromJson(val);

  withError(error) => LoginModal.withError(error);

  fromJsonError(valError) => LoginModal.fromJsonError(valError);
}
