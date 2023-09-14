import 'package:apna_chotu_app/services_flow/service_list_bath.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_text.dart';
import '../../common/buttom_navigation_bar.dart';

class ServiceListMain extends StatefulWidget {
  const ServiceListMain({Key? key}) : super(key: key);

  @override
  State<ServiceListMain> createState() => _ServiceListMainState();
}

class _ServiceListMainState extends State<ServiceListMain> {
  //services list
  List<Map<String, dynamic>> serve_List = [
    {
      "image": "assets/images/service_1.png",
      "likes": "10292",
      "name": "Bathroom Cleaning",
      "subTitle": "Bathroom cleaning of all areas",
      "km": "15.5 Km, 1hour",
      "rating": "4.0"
    },
    {
      "image": "assets/images/service_2.png",
      "likes": "8938",
      "name": "Electrical Work",
      "subTitle": "All type of electrical work",
      "km": "15.5 Km, 55 mins",
      "rating": "3.9"
    },
    {
      "image": "assets/images/service_3.png",
      "likes": "2092",
      "name": "Pets Control",
      "subTitle": "Cockroch Ant & General",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_4.png",
      "likes": "2901",
      "name": "Car Repair",
      "subTitle": "All types of Cars services available",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
    {
      "image": "assets/images/service_5.png",
      "likes": "1423",
      "name": "Furniture Repair",
      "subTitle": "All types of furniture repairs",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_6.png",
      "likes": "3759",
      "name": "Tuitions",
      "subTitle": "Tuitions for all classes",
      "km": "10.5 Km, 55 mins",
      "rating": "3.8"
    },
    {
      "image": "assets/images/service_7.png",
      "likes": "2325",
      "name": "Gym",
      "subTitle": "Full a/c gym",
      "km": "12.0 Km, 52 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_8.png",
      "likes": "3782",
      "name": "Bike Services",
      "subTitle": "Bike repair services",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AppBottomNavigationBar(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        minLeadingWidth: 0,
                        minVerticalPadding: 0,
                        horizontalTitleGap: -2,
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        title: CommonText(
                          'Hello, Vinay',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: CommonText(
                          'What do you want to eat?',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                      ),
                    ),
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {},
                        icon: Icon(Icons.notifications)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: TextField(
                    // autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'search"Biryani"',
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.deepOrange,
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      // fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        // borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonText(
                            'Restaurents near you',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                              width: 65,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                    color: Colors.orange,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: RoundedButton(
                                padding: 0,
                                onPressed: () {},
                                name: '',
                                child: CommonText(
                                  'Show All',
                                  style: TextStyle(fontSize: 13),
                                ),
                              )),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.sort,
                              size: 15,
                            ),
                          ),
                        ),
                        CommonText(
                          'Sort by',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for (int a = 0; a < serve_List.length; a++)
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ServiceList()));
                        },
                        child: Container(
                          height: 170,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                              color: Color(0xFFF5F5F5FF)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 7,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          '${serve_List[a]['image']}',
                                        ),
                                        fit: BoxFit.fitWidth),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.deepOrange,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CommonText(
                                        '${serve_List[a]['likes']}',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CommonText(
                                            '${serve_List[a]['name']}',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            height: 15,
                                            width: 45,
                                            child: RoundedButton(
                                              padding: 0,
                                              name: 'New',
                                              child: CommonText(
                                                'New',
                                                style: TextStyle(fontSize: 9),
                                              ),
                                              onPressed: () {},
                                            ),
                                          )
                                        ],
                                      ),
                                      CommonText(
                                        '${serve_List[a]['subTitle']}',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(thickness: 2),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CommonText('${serve_List[a]['km']}',
                                              style: TextStyle(fontSize: 11)),
                                          // SizedBox(width: 75),
                                          Row(
                                            children: [
                                              CommonText(
                                                '4.0',
                                                style: TextStyle(fontSize: 11),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.deepOrange,
                                                size: 15,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CommonText(
                        'Today’s Promo Codes',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                                color: Colors.orange, style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: RoundedButton(
                            padding: 0,
                            onPressed: () {},
                            name: '',
                            child: CommonText(
                              'Show All',
                              style: TextStyle(fontSize: 13),
                            ),
                          )),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 280,
                        width: 340,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image:
                                AssetImage('assets/images/service_9.png'),
                                fit: BoxFit.fill)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 199, top: 18),
                              child: Container(
                                height: 30,
                                width: 111,
                                child: RoundedButton(
                                  onPressed: () {},
                                  name: '',
                                  child: Center(
                                    child: CommonText(
                                      'TJALM10292',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 150),
                            Column(
                              children: [
                                Container(
                                  width: 308,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(11)),
                                      color: Color(0xFFFFFFFF)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CommonText(
                                              'Bathroom Cleaning Services',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 50),
                                            CommonText(
                                              'RS 499/-',
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.deepOrange),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            CommonText(
                                              'All type of bathroom services available',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            SizedBox(width: 30),
                                            CommonText(
                                              '899/-',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        height: 280,
                        width: 340,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/service_9.png'),
                                fit: BoxFit.fill)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 199, top: 18),
                              child: Container(
                                height: 30,
                                width: 111,
                                child: RoundedButton(
                                  onPressed: () {},
                                  name: '',
                                  child: Center(
                                    child: CommonText(
                                      'TJALM10292',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 150),
                            Column(
                              children: [
                                Container(
                                  width: 308,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(11)),
                                      color: Color(0xFFFFFFFF)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CommonText(
                                              'Bathroom Cleaning Services',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 50),
                                            CommonText(
                                              'RS 499/-',
                                              style: TextStyle(
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.deepOrange),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            CommonText(
                                              'All type of bathroom services available',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            SizedBox(width: 30),
                                            CommonText(
                                              '899/-',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
