import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Config/app_pages.dart';
import 'Network/logger.dart';
import 'lang/translation_service.dart';
//hii

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    HttpClient httpClient = super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
        // setup completed on mac
      };
    return httpClient;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init();
  runApp(const ApnaChotuApp());
}

class ApnaChotuApp extends StatelessWidget {
  const ApnaChotuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      title: 'Apna Chotu app',
      logWriterCallback: Logger.write,
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
      locale: const Locale('en', 'US'),
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      theme: ThemeData(
        typography: Typography.material2018(
          englishLike: Typography.englishLike2018,
          dense: Typography.dense2018,
          tall: Typography.tall2018,
        ),
        primaryColor: Colors.green
      ),
    );
  }
}
