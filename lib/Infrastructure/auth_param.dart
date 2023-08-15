import 'dart:convert';

import 'package:dio/dio.dart';

import '../Common/helper.dart';
import '../Network/network_data_class.dart';
import '../Network/network_strings.dart';
import '../domain/data_class/auth_model.dart';

class AuthParam {
  final String phone;
  final String? email;

  AuthParam({required this.phone, this.email});

  Map<String, dynamic> toJsonResources() {
    return {"mobile": phone, "email": email ?? ''};
  }

  NetworkDataClass getParam() {
    return NetworkDataClass(
        baseUrl: Helpers.baseUrl,
        extendedUrl: email != null ? Helpers.login : Helpers.signup,

        options: Options(
          headers: {"content-type": "application/json"},
        ),
        isCookie: false,
        param: jsonEncode(toJsonResources()),
        requestType: NetworkString.requestPost);
  }

  fromJson(val) => AuthModel.fromJson(val);

  withError(error) => AuthModel.withError(error);

  fromJsonError(valError) => AuthModel.fromJsonError(valError);
}
