import 'dart:developer';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
// import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'error_handling_response.dart';
import 'Logger.dart';
import 'network_data_class.dart';
import 'network_strings.dart';

final apnaChotaAppNetwork = ApnaChotaAppNetwork();
final Dio _dio = Dio();

class ApnaChotaAppNetwork {
  Future<dynamic> getAPIResponse(dynamic dynamicData) async {
    print('network layer arrived');
    // NetworkDataClass networkDataClass = dynamicData.getParam();
    NetworkDataClass networkDataClass =
        (dynamicData.getParam() is Future<NetworkDataClass>)
            ? await dynamicData.getParam()
            : dynamicData.getParam();
    print('this before');
    // dioCertificateCall(_dio);
    print('network layer arrived to certivicale');
    try {
      print('network layer');

      _dio.options.connectTimeout = 5000000 as Duration?;
      _dio.options.receiveTimeout = 5000000 as Duration?;

      if (await checkInternetConnectivity()) {
        _dio.options.baseUrl = networkDataClass.baseUrl;

        Response? response;

        switch (networkDataClass.requestType) {
          case NetworkString.requestPost:
            Logger.writeLog('params:${networkDataClass.param}');
            Logger.writeLog('baseUrl:${networkDataClass.baseUrl}');
            Logger.writeLog('extendedUrl:${networkDataClass.extendedUrl}');
// print(networkDataClass.param.toString());
            response = await _dio.post(networkDataClass.extendedUrl,
                data: networkDataClass.param,
                options: networkDataClass.options);

            break;
          case NetworkString.requestUpdate:
            log(' this is updated methode');
            print(networkDataClass.param);
            print(networkDataClass.options);
            print(networkDataClass.extendedUrl);
            response = await _dio.put(networkDataClass.extendedUrl,
                data: networkDataClass.param,
                options: networkDataClass.options);

            break;
          case NetworkString.requestGet:
            Logger.writeLog('baseUrl:${networkDataClass.baseUrl}');
            Logger.writeLog('extendedUrl:${networkDataClass.extendedUrl}');

            response = await _dio.get(
              networkDataClass.extendedUrl,
            );
            // options: networkDataClass.options);
            // Logger.writeLog(response);
            break;

          case NetworkString.requestDelete:
            response = await _dio.delete(
              networkDataClass.extendedUrl,
            );
            break;
        }

        // Logger.logLongString(response.toString());
        Logger.logLongString(response?.data.toString() ?? ' response was null');
        return dynamicData.fromJson(response?.data);
      } else {
        return dynamicData.withError('you have internet issue');
      }
    } on DioError catch (error) {
      Logger.logLongString('errorOth: $error');

      var errorResponse = ErrorHandling.responseError(error);

      Logger.logLongString(errorResponse.toString());

      if (errorResponse is String) {
        return dynamicData.withError(errorResponse);
      } else {
        return dynamicData.fromJsonError(errorResponse);
      }
    }
  }

  Future<bool> checkInternetConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return false;
    }
  }

  void dioCertificateCall(Dio dio) {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }
}
