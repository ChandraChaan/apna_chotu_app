import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';
import '../../utils/menu_tabs.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({super.key});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/rectangle_215.png',
                ),
              )),
              child: ListTile(
                minVerticalPadding: 0,
                minLeadingWidth: 0,
                horizontalTitleGap: -2,
                contentPadding: EdgeInsets.all(0),
                leading: InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                  onTap: (){
                    Get.back();
                  },
                ),
                title: CommonText(
                  'T-Grill',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                subtitle: CommonText(
                  'CBI Colony, Hi-tech City, Hyderabad',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MenuTabs(),
                      SizedBox(height: 20),// common function
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                                border: Border.all(color: Colors.green),
                                color: Colors.white),
                            child: Center(
                              child: CommonText(
                                'Popular',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ),
                          Icon(Icons.favorite_outline)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 18),
                        child: CommonText(
                          'T-Grill',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.location_on,
                              color: Colors.deepOrange,
                            ),
                            backgroundColor: Color(0xFFFFE9DF),
                          ),
                          SizedBox(width: 6),
                          CommonText(
                            '4 km',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 40),
                          CircleAvatar(
                              backgroundColor: Color(0xFFFFE9DF),
                              child: Icon(Icons.star_half,
                                  color: Colors.deepOrange)),
                          SizedBox(width: 6),
                          CommonText(
                            '4.8 Rating',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 45),
                      CommonText(
                        'We are one of the best restaurant in the city of Hyderabad with year of experience We serve a lot of quality food cook directly directly professional chefs. Hope you like it!.',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
