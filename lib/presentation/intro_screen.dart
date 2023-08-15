import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../utils/linear_background.dart';
import '../utils/rounded_button.dart';
import 'auth_screen.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPageIndex = 0;
  final List<IntroScreen> introScreens = [
    IntroScreen(
      title: "Find Best Delivery Services All Around Your City",
      description: "Affordable delivery options available for you.",
      image: 'assets/images/food.png',
    ),
    IntroScreen(
      title: "Delivering lip-smacking food is our passion.",
      description: "Time is precious, and we know that.",
      image: 'assets/images/cooking.png',
    ),
    IntroScreen(
      title: "Your Favorite Food delivery Partner",
      description: "The best service to fulfill your expectations.",
      image: 'assets/images/delivery_vehicle.png',
    ),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _onNextButtonTap() {
    if (_currentPageIndex < introScreens.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      Get.toNamed(Routes.auth);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: introScreens.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, index) {
              return IntroScreenWidget(
                introScreen: introScreens[index],
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 80,
            child: Center(
              child: RoundedButton(
                padding:
                    _currentPageIndex == introScreens.length - 1 ? 3 : null,
                width: MediaQuery.of(context).size.width / 1.2,
                name: 'Next',
                onPressed: _onNextButtonTap,
                child: _currentPageIndex == introScreens.length - 1
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 3,
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Icon(Icons.chevron_right),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 58,
                          )
                        ],
                      )
                    : null,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Center(
              child: DotsIndicator(
                dotsCount: introScreens.length,
                position: _currentPageIndex,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(30.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  activeColor: const Color(0xFFFF6724),
                  spacing: const EdgeInsets.symmetric(horizontal: 4),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroScreen {
  final String title;
  final String description;
  final String image;

  IntroScreen({
    required this.title,
    required this.description,
    required this.image,
  });
}

class IntroScreenWidget extends StatelessWidget {
  final IntroScreen introScreen;

  const IntroScreenWidget({required this.introScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LinearBackground(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                introScreen.title,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 40),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                introScreen.description,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 370,
                width: 350,
                child: Image.asset(introScreen.image),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
