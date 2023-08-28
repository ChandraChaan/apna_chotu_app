import 'package:apna_chotu_app/presentation/address_new_other_address.dart';
import 'package:apna_chotu_app/presentation/change_location.dart';
import 'package:apna_chotu_app/presentation/dashboard/main_home_screen1.dart';
import 'package:apna_chotu_app/presentation/dashboard/main_home_screen2.dart';
import 'package:apna_chotu_app/presentation/dashboard/resturant_list_screen.dart';
import 'package:apna_chotu_app/presentation/dashboard/scroll_direction.dart';
import 'package:apna_chotu_app/presentation/scrap_1.dart';
import 'package:apna_chotu_app/presentation/otp_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Application/Binding/main_binding.dart';
import '../Presentation/auth_screen.dart';
import '../Presentation/intro_screen.dart';
import '../presentation/location_screen.dart';
import '../presentation/select_location_screen.dart';

part 'app_route.dart';

class AppPages {
  static const initial = Routes.intro;
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
        name: Routes.othersAddress,
        page: () =>  const OthersAddress(),
        binding: MainBinding()),
    GetPage(
        name: Routes.mapScreen,
        page: () =>  MapScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.changeLocationScreen,
        page: () =>  ChangeLocationScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.dashBoardScreen,
        page: () =>  DashBoardScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.foodScreen,
        page: () =>  FoodScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.dashBoardListScreen,
        page: () =>  DashboardListScreen(),
        binding: MainBinding()),

  ];
}
