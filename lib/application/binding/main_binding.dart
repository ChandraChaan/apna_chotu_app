import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../Provider/apna_chota_app_adapter.dart';
import '../../Provider/apna_chota_app_provider.dart';
import '../../Provider/apna_chota_app_repository.dart';
import '../controller/auth_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IApnaChotuAppProvider>(() => ApnaChotuAppProvider());

    Get.lazyPut<IApnaChotuAppRepository>(
        () => ApnaChotuAppRepository(provider: Get.find()));

    Get.lazyPut(() => AuthController(apnaChotuRepository: Get.find()));

  }
}
