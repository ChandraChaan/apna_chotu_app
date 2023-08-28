import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardListScreen extends StatefulWidget {
  const DashboardListScreen({super.key});

  @override
  State<DashboardListScreen> createState() => _DashboardListScreenState();
}

class _DashboardListScreenState extends State<DashboardListScreen> {
  List<Map<String, dynamic>> servicesItems = [
    {"image": "assets/images/plate_1.png", "name": "Food"},
    {"image": "assets/images/service.png", "name": "Services"},
    {"image": "assets/images/cart.png", "name": "Groceries"},
    {"image": "assets/images/medicine.png", "name": "Medicine"},
    {"image": "assets/images/vegetables.png", "name": "Vegetables"},
    {"image": "assets/images/taxi.png", "name": "Taxi Services"},
    {"image": "assets/images/meat.png", "name": "Meat"},
    {"image": "assets/images/misc_services.png", "name": "Misc Services"},
    {"image": "assets/images/more.png", "name": "More"},
  ];
  //chips buttons, filter icons, gridview
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.chevron_left,size: 35,)),
                  Text(
                    'Hello, Vinay',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38, right: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'what do you want to eat?',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(
                      Icons.notification_add_outlined,
                      size: 30,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.mic,
                        size: 30,
                        color: Colors.deepOrange,
                      ),
                      onPressed: () {
                        // Perform voice search action
                      },
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage('assets/images/biryani.png'),
                              fit: BoxFit.fill),
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/frame_38.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/frame_39.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Restaurents near you',
                      style:
                      TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 25,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrange,
                      ),
                      child: Center(
                        child: Text(
                          'show all',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.sort,
                      size: 25,
                    ),
                    Text('Sort by'),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: servicesItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                     height: 190,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(15)),
                       image: DecorationImage(
                           image: AssetImage('assets/images/group_3146.png'),
                           fit: BoxFit.fill),
                     ),
                   );
                },
              ),


              Container(
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/group_3159.png'),
                        fit: BoxFit.fill)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
