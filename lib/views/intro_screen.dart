import 'package:apna_chotu_app/views/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'common/linear_background.dart';

class IntroductionScreenPage extends StatefulWidget {
  @override
  _IntroductionScreenPageState createState() => _IntroductionScreenPageState();
}

class _IntroductionScreenPageState extends State<IntroductionScreenPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;
  final List<IntroScreen> introScreens = [
    IntroScreen(
      title: "Find the Perfect Truck",
      description:
      "Browse through a wide range of trucks and find the one that suits your requirements. Filter by size, capacity, and other specifications to ensure a perfect match.",
      image: 'assets/images/food.png',
    ),
    IntroScreen(
      title: "Track Your Shipment",
      description:
      "Stay updated throughout the journey. Track your shipment in real-time and receive notifications at every step of the process.",
      image: 'assets/images/food.png',
    ),
    IntroScreen(
      title: "Effortless Delivery",
      description: "Sit back and relax while we handle the delivery for you.",
      image: 'assets/images/food.png',
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
    }
    else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
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
            bottom: 110,
            child: TextButton(
                onPressed: _onNextButtonTap,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130, vertical: 16),
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Text(
                  _currentPageIndex == introScreens.length - 1
                      ? 'Sign In'
                      : 'Next',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                )
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40,
            child: Center(
              child: DotsIndicator(
                dotsCount: introScreens.length,
                position: _currentPageIndex.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  activeColor: Colors.green,
                  spacing: const EdgeInsets.symmetric(horizontal: 4),
                  color: Colors.green,
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
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
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
      ),
    );
  }
}