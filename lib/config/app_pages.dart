import 'package:apna_chotu_app/presentation/add_newaddress3.dart';
import 'package:apna_chotu_app/presentation/add_newaddress4.dart';
import 'package:apna_chotu_app/presentation/location_screen1.dart';
import 'package:apna_chotu_app/presentation/otp_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Application/Binding/main_binding.dart';
import '../Presentation/auth_screen.dart';
import '../Presentation/intro_screen.dart';
import '../presentation/location_screen.dart';
import '../presentation/select_location2.dart';

part 'app_route.dart';

class AppPages {
  static const initial = Routes.otpScreen;
  static final routes = [
    GetPage(
        name: Routes.intro,
        page: () => const IntroductionScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.auth,

        page: () => const AuthScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.currentLocation,
        page: () => const CurrentLocation(),
        binding: MainBinding()),
    GetPage(
        name: Routes.otpScreen,
        page: () =>  const OTPScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.locationScreen,
        page: () =>  const LocationScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.newAddressScreen,
        page: () =>  const NewAddressScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.othersAddress,
        page: () =>  const OthersAddress(),
        binding: MainBinding()),
    GetPage(
        name: Routes.mapScreen,
        page: () =>  MapScreen(),
        binding: MainBinding()),

  ];
}
