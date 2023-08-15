import 'package:dio/dio.dart';
import 'package:yujdesingssample/Common/helper.dart';
import 'package:yujdesingssample/Domain/DataClass/GetHomePageModel.dart';
import 'package:yujdesingssample/Network/NetworkDataClass.dart';
import 'package:yujdesingssample/Network/NetworkStrings.dart';

class GetHomePageAPIModel {

  FormData getFormData() {
    // return FormData.fromMap(updateMap(data: <String, dynamic>{
    //         "image": "null",
    //       }, update: null));
  }

  NetworkDataClass getParam() {
    return NetworkDataClass(
        baseUrl: Helpers.baseUrl,
        extendedUrl: Helpers.login,

        options: Options(
          headers: {},
        ),
        // headers: {},
        isCookie: false,
        param: getFormData(),
        requestType: NetworkString.requestGet);
  }

  fromJson(val) => GetHomePageModel.fromJson(val);

  withError(error) => GetHomePageModel.withError(error);

  fromJsonError(valError) => GetHomePageModel.fromJsonError(valError);
}
