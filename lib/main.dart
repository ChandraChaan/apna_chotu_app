import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Config/app_pages.dart';
import 'Network/logger.dart';
import 'lang/translation_service.dart';


// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext context) {
//     HttpClient httpClient = super.createHttpClient(context)
//       ..badCertificateCallback = (X509Certificate cert, String host, int port) {
//         return true;
//       };
//     return httpClient;
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // HttpOverrides.global = MyHttpOverrides();
  await GetStorage.init();
  runApp(const ApnaChotuApp());
}

class ApnaChotuApp extends StatelessWidget {
  const ApnaChotuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apna Chotu app',
      logWriterCallback: Logger.write,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      locale: const Locale('en', 'US'),
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
