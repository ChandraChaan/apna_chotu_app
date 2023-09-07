import 'package:flutter/material.dart';

import '../presentation/dashboard/main_home_screen2.dart';
import 'app_text.dart';

class AppBottomNavigationBar extends StatefulWidget {
final int selectedIndex;
final Widget? child;

  const AppBottomNavigationBar({super.key, this.selectedIndex=0, this.child});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _selectedIndex = 0;


  @override
  void initState() {
   _selectedIndex = widget.selectedIndex;
   setState(() {

   });
    super.initState();
  }
  final List<Widget> _pages = [
    for(int a=1; a<6; a++)
      Page(name: 'Page $a Content',),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child ?? _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.deepOrange,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
              label: 'Food', icon: Image.asset('assets/images/vector.png')),
          BottomNavigationBarItem(
            label: 'Grocery',
            icon: Image.asset('assets/images/group_3183.png'),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              child: Image.asset('assets/images/main_logo.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }


}
class Page extends StatelessWidget {
  final String name;

  const Page({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CommonText(name),
    );
  }
}