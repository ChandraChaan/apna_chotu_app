import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 38,
                      color: Colors.deepOrange,
                    ),
                    Text(
                      'Hakimpura',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.currentLocation);
                          //NavigationBar
                        },
                        icon: Icon(
                          Icons.expand_more,
                          size: 25,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 37),
                      child: Text(
                        'Rahimpura, Dattatreya Nagar, Hyderabad',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Icon(Icons.notifications),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/profile_picture.png'),
                      radius: 23,
                    )
                  ],
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
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/group_11.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  //child: Center(child: Text('Testing')),
                ),
                SizedBox(
                  height: 20,
                ),
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
                    return Container(
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
                                      color: Color(0xFFf5f5f5),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Image.asset(
                                        servicesItems[index]['image']))),
                            Container(
                              child: Text(servicesItems[index]['name']),
                            )
                          ],
                        ));
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
}
