import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../common/app_text.dart';
import '../../common/buttom_navigation_bar.dart';
import 'main_home_screen2.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBottomNavigationBar(child: FoodScreen());
  }
}
