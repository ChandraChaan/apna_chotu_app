import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Application/Binding/main_binding.dart';
import '../Presentation/auth_screen.dart';
import '../Presentation/intro_screen.dart';

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
  ];
}
