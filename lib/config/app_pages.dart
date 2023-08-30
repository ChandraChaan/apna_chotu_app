import 'package:apna_chotu_app/presentation/dashboard/main_home_screen1.dart';
import 'package:apna_chotu_app/presentation/dashboard/main_home_screen2.dart';
import 'package:apna_chotu_app/presentation/dashboard/resturant_list_screen.dart';
import 'package:apna_chotu_app/presentation/locations_screens/address_new_other_address.dart';
import 'package:apna_chotu_app/presentation/restuarant/non_veg_closesoon.dart';
import 'package:apna_chotu_app/presentation/restuarant/non_veg_menu.dart';
import 'package:apna_chotu_app/presentation/otp_screen.dart';
import 'package:apna_chotu_app/presentation/restuarant/veg_menu.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Application/Binding/main_binding.dart';
import '../Presentation/auth_screen.dart';
import '../Presentation/intro_screen.dart';
import '../presentation/locations_screens/location_screen.dart';
import '../presentation/locations_screens/select_location_screen.dart';

part 'app_route.dart';

class AppPages {
  static const initial = Routes.nonVegCloseSoon;
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
        page: () => const OTPScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.othersAddress,
        page: () => const OthersAddress(),
        binding: MainBinding()),
    GetPage(
        name: Routes.mapScreen,
        page: () => MapScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.dashBoardScreen,
        page: () => DashBoardScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.foodScreen,
        page: () => FoodScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.dashBoardListScreen,
        page: () => DashboardListScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.nonVegMenu,
        page: () => NonVegMenu(),
        binding: MainBinding()),
    GetPage(
        name: Routes.vegMenu, page: () => VegMenu(), binding: MainBinding()),
    GetPage(
        name: Routes.nonVegCloseSoon,
        page: () => NonVegCloseSoon(),
        binding: MainBinding()),
  ];
}
