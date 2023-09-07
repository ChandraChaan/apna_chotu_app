import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FoodScreen extends StatelessWidget {
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
  // int counts = 3;
  // final List<String> img = ['image = 1', 'images = 2', 'images = 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                // List tile have more....
                ListTile(
                  minLeadingWidth: 0,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 10,
                  contentPadding: const EdgeInsets.all(0),
                  leading: Icon(
                    Icons.location_on,
                    size: 38,
                    color: Colors.deepOrange,
                  ),
                  title: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Madhapur',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.toNamed(Routes.currentLocation);
                            },
                            icon: Icon(Icons.expand_more))
                      ],
                    ),
                  ),
                  subtitle: Text(
                    'Rahimpura, Dattatreya Nagar, Hyderabad',
                    style: TextStyle(fontSize: 14),
                  ),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.notifications),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_picture.png'),
                          radius: 23,
                        ),
                      ],
                    ),
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
                CarouselSlider(
                    items: [
                      Image.asset('assets/images/group_11.png'),
                      Image.asset('assets/images/group_12.png'),
                      Image.asset('assets/images/group_13.png')
                    ],
                    options: CarouselOptions(
                      height: 150,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      onPageChanged: (num, str) {},
                      scrollDirection: Axis.horizontal,
                    )),
                SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: servicesItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.5,
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(onTap: (){
                      if (index == 0);
                      Get.toNamed(Routes.restaurantListScreen);
                    },
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff8f8f8f).withOpacity(0.3),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF5F5F5).withOpacity(0.8),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                      ),
                                      child: Image.asset(
                                          servicesItems[index]['image']))),
                              Container(
                                child: Text(servicesItems[index]['name']),
                              )
                            ],
                          )),
                    );
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/Group_126.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/ride_now.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/book_now.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/group_3227.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/gym.png'),
                        fit: BoxFit.fill),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  void setState(Null Function() param0) {}
}
