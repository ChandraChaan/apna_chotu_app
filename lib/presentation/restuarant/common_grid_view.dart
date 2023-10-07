import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';
import '../../common/buttom_navigation_bar.dart';
import '../../utils/menu_tabs.dart';
import '../../utils/rounded_button.dart';
import 'non_veg_menu.dart';

class CommonGridView extends StatefulWidget {
  // to do define with modal
  final List<dynamic> items;

  const CommonGridView({super.key, required this.items});

  @override
  State<CommonGridView> createState() => _CommonGridViewState();
}

class _CommonGridViewState extends State<CommonGridView> {
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
                        leading: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
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
                      decoration: InputDecoration(
                        hintText: 'Search "Biryani"',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                          borderSide: BorderSide(
                            color: Colors.deepOrange, // Change the border color as desired
                            width: 2.0, // Adjust the border width as needed
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.deepOrange, // Change the icon color as desired
                        ),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Colors.deepOrange,
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Colors.white, // Change the background color as desired
                      ),
                    )
                ),
                MenuTabs(),
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
                    for (int a = 0; a < widget.items.length; a++)
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NonVegMenu()));
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
                                          '${widget.items[a]['image']}',
                                        ),
                                        fit: BoxFit.fitWidth),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: Icon(widget.items[a]["isliked"]
                                            ? Icons.favorite
                                            : Icons.favorite_border),
                                        color: widget.items[a]["isliked"]
                                            ? Colors.deepOrange
                                            : Colors.white,
                                        onPressed: () {
                                          setState(() {
                                            widget.items[a]["isliked"] = !(widget.items[a]["isliked"]);
                                          });
                                          // toggleLike();
                                        },
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CommonText(
                                        // here do display api likes count,
                                        '${widget.items[a]['isliked'] ? '1' : '0'}',
                                        style: TextStyle(
                                            fontSize: 15,
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
                                            '${widget.items[a]['name']}',
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
                                        '${widget.items[a]['subTitle']}',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(thickness: 2),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          CommonText('${widget.items[a]['km']}',
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
                                AssetImage('assets/images/rectangle_2.png'),
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
                                              'THE JOINT AL-MANDI',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 65),
                                            CommonText(
                                              'RS 299/-',
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
                                              'Arunodaya Housing Colony, Madhapur',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            SizedBox(width: 49),
                                            CommonText(
                                              '499/-',
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
                                AssetImage('assets/images/rectangle_2.png'),
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
                                              'THE JOINT AL-MANDI',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 65),
                                            CommonText(
                                              'RS 299/-',
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
                                              'Arunodaya Housing Colony, Madhapur',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            SizedBox(width: 49),
                                            CommonText(
                                              '499/-',
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
                SizedBox(height: 25),
                CommonText(
                  'Live\nLove\nLaugh',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 7),
                CommonText(
                  'Always with you.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    CommonText(
                      'Crafted with',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.deepOrange,
                      size: 14,
                    ),
                    CommonText(
                      'in Sanga Reddy, Telangana, '
                          'India.',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
