import 'package:apna_chotu_app/presentation/otp_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Application/Binding/main_binding.dart';
import '../Presentation/auth_screen.dart';
import '../Presentation/intro_screen.dart';
import '../presentation/select_location.dart';

part 'app_route.dart';

class AppPages {
  static const initial = Routes.auth;
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

  ];
}
