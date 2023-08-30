import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardListScreen extends StatefulWidget {
  //const DashboardListScreen({super.key});

  @override
  State<DashboardListScreen> createState() => _DashboardListScreenState();
}

class _DashboardListScreenState extends State<DashboardListScreen> {
  List<Map<String, dynamic>> restaurantFood = [
    {"image": "assets/images/image_22.png", "name": "img"},
    {"image": "assets/images/group_3146.png", "name": "img"}
  ];

  //int counts = 3;
//  final List<String> img = ['image = 1', 'images = 2', 'images = 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.black, size: 45),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            'Add New Address',
            style: TextStyle(color: Colors.black),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: const Icon(Icons.search, size: 30),
                            suffixIcon: IconButton(
                                icon: const Icon(Icons.mic,
                                    size: 30, color: Colors.deepOrange),
                                onPressed: () {
                                  // Perform voice search action
                                }),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16.0)))),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Chip(
                          label: Image.asset('assets/images/biryani.png'),
                        )),
                    SizedBox(width: 10),
                    Chip(
                      label: Image.asset('assets/images/frame_38.png'),
                    ),
                    SizedBox(width: 10),
                    Chip(label: Image.asset('assets/images/frame_38.png'))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Restaurents near you',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.deepOrange),
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
                  itemCount: restaurantFood.length,
                  // Number of items in the grid
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.5, // Aspect ratio of each grid item
                    crossAxisCount: 2, // Number of items in each row
                    crossAxisSpacing: 10, // Spacing between columns
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    // This function builds each individual grid item
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Image.asset(restaurantFood[index][
                                          'image'] // Assuming __list contains image paths
                                      ))),
                          Container(
                            child: Text(
                              restaurantFood[index][
                                  'name'], // Assuming __list contains item names
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
