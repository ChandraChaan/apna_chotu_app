import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:yujdesingssample/Application/Controller/HomePageController.dart';
import 'package:yujdesingssample/Application/Controller/loginController.dart';
import 'package:yujdesingssample/Provider/LoadingAdapter.dart';
import 'package:yujdesingssample/Provider/LoadingProvider.dart';
import 'package:yujdesingssample/Provider/LoadingRepository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ILoadingProvider>(() => LoadingProvider());

    Get.lazyPut<ILoadingRepository>(
        () => LoadingRepository(provider: Get.find()));

    Get.lazyPut(() => GetHomePageController(apiCallRepository: Get.find()));
    Get.lazyPut(() => LoginController(yujRepository: Get.find()));

  }
}
