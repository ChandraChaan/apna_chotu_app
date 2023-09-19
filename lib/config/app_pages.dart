import 'package:apna_chotu_app/presentation/dashboard/main_home_screen1.dart';
import 'package:apna_chotu_app/presentation/dashboard/main_home_screen2.dart';
import 'package:apna_chotu_app/presentation/locations_screens/address_not_found.dart';
import 'package:apna_chotu_app/presentation/order_history/privacy_policy.dart';
import 'package:apna_chotu_app/presentation/payment_method/payment_options.dart';
import 'package:apna_chotu_app/presentation/profile_screen/edit_profile_screen.dart';
import 'package:apna_chotu_app/presentation/restuarant/cart_screen.dart';
import 'package:apna_chotu_app/presentation/restuarant/resturant_list_screen.dart';
import 'package:apna_chotu_app/presentation/locations_screens/address_new_other_address.dart';
import 'package:apna_chotu_app/presentation/order_history/help_screen.dart';
import 'package:apna_chotu_app/presentation/order_history/invite_friends.dart';
import 'package:apna_chotu_app/presentation/order_history/logout_screen.dart';
import 'package:apna_chotu_app/presentation/order_history/order_details_screen.dart';
import 'package:apna_chotu_app/presentation/order_history/order_history.dart';
import 'package:apna_chotu_app/presentation/order_history/rate_your_meal.dart';
import 'package:apna_chotu_app/presentation/order_history/review_screeen.dart';
import 'package:apna_chotu_app/presentation/payment_method/order_success.dart';
import 'package:apna_chotu_app/presentation/profile_screen/profile_screen.dart';
import 'package:apna_chotu_app/presentation/restuarant/non_veg_closesoon.dart';
import 'package:apna_chotu_app/presentation/restuarant/non_veg_menu.dart';
import 'package:apna_chotu_app/presentation/otp_screen.dart';
import 'package:apna_chotu_app/presentation/restuarant/restuarant_details.dart';
import 'package:apna_chotu_app/presentation/restuarant/veg_menu.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../Application/Binding/main_binding.dart';
import '../Presentation/auth_screen.dart';
import '../Presentation/intro_screen.dart';
import '../presentation/locations_screens/location_screen.dart';
import '../presentation/locations_screens/select_location.dart';
import '../presentation/payu/payu_payment.dart';

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
        name: Routes.restaurantListScreen,
        page: () => RestaurantListScreen(),
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
    GetPage(
        name: Routes.restaurantDetails,
        page: () => RestaurantDetails(),
        binding: MainBinding()),
    GetPage(
        name: Routes.addNewCard,
        page: () => AddNewCard(),
        binding: MainBinding()),
    GetPage(
        name: Routes.orderSuccess,
        page: () => OrderSuccess(),
        binding: MainBinding()),
    GetPage(
        name: Routes.profileScreen,
        page: () => ProfileScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.orderHistoryScreen,
        page: () => OrderHistoryScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.orderDetailsScreen,
        page: () => OrderDetailsScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.rateYourMeal,
        page: () => RateYourMeal(),
        binding: MainBinding()),
    GetPage(
        name: Routes.reviewScreen,
        page: () => ReviewScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.inviteFriends,
        page: () => InviteFriends(),
        binding: MainBinding()),
    GetPage(
        name: Routes.helpScreen,
        page: () => HelpScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.logoutScreen,
        page: () => LogoutScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.cartScreen,
        page: () => CartScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.editProfileScreen,
        page: () => EditProfileScreen(),
        binding: MainBinding()),
    GetPage(
        name: Routes.privacyPolicy,
        page: () => PrivacyPolicy(),
        binding: MainBinding()),
    GetPage(
        name: Routes.paymentOptions,
        page: () => PaymentOptions(),
        binding: MainBinding()),
    GetPage(
        name: Routes.addressNotFound,
        page: () => AddressNotFound(),
        binding: MainBinding()),
    GetPage(
        name: Routes.payuPayment,
        page: () => PayuPayment(),
        binding: MainBinding()),
  ];
}
