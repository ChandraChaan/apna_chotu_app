import 'package:flutter/material.dart';

class MenuTabs extends StatelessWidget {
  const MenuTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.deepOrangeAccent,
        ),
        tabs: [
          for(int a=0; a<6; a++)
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.deepOrangeAccent, width: 2)),
                child: Row(
                    children: [
                      Image.asset('assets/images/fruit4.png', height: 35,),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Biriyani', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          Text('1440 Places',style: TextStyle(fontSize: 12),),
                        ],
                      )
                    ]),
              ),
            ),
        ],
      ),
    );
  }
}
