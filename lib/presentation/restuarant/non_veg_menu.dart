import 'package:apna_chotu_app/presentation/restuarant/cart_screen.dart';
import 'package:apna_chotu_app/utils/menu_tabs.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Config/app_pages.dart';
import '../../common/app_text.dart';
import '../../common/buttom_navigation_bar.dart';
import '../dashboard/main_home_screen1.dart';
import '../dashboard/main_home_screen2.dart';

class NonVegMenu extends StatefulWidget {
  const NonVegMenu({super.key});

  @override
  State<NonVegMenu> createState() => _NonVegMenuState();
}

class _NonVegMenuState extends State<NonVegMenu> {
  int selected = 1;
  bool non_veg = false;
  List non_veg_list = [
    {
      //img 1
      "image": "assets/images/image_23.png",
      "name": "chicken Biryani",
      "description":
          "Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita.",
      "open_close": "closes soon",
      "price": "180",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img 2
      "image": "assets/images/image_24.png",
      "name": "Tandoori Chicken",
      "description":
          "Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita.",
      "open_close": "Open",
      "price": "280",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      // img 3
      "image": "assets/images/mask_group.png",
      "name": "chicken Biryani Handi",
      "description":
          "Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita.",
      "open_close": "closes soon",
      "price": "399",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img 4
      "image": "assets/images/image_25.png",
      "name": "chicken biryani Jumbo Pack",
      "description":
          "Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita.",
      "open_close": "closes soon",
      "price": "880",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img5
      "image": "assets/images/image_23.png",
      "name": "chicken biryani",
      "description":
          "Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita.",
      "open_close": "Open",
      "price": "180",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img6
      "image": "assets/images/image_26.png",
      "name": "Chicken Tikka",
      "description":
          "Chicken Tikka Kebab is a delicious appetizer that is packed with flavor.",
      "open_close": "Open",
      "price": "249",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img7
      "image": "assets/images/image_27.png",
      "name": "Pot Chicken Biryani",
      "description":
          "Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita.",
      "open_close": "closes soon",
      "price": "329",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img8
      "image": "assets/images/image_28.png",
      "name": "Tandoori Chicken Wings",
      "description":
          "Tandoori chicken wings, marinated in Indian spices and yogurt and grilled to perfection, will blow your mind away!",
      "open_close": "closes soon",
      "price": "180",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img9
      "image": "assets/images/image_29.png",
      "name": "Coconut Chicken Curry",
      "description":
          "Easy & healthy Indian Coconut Chicken Curry made in an Instant Pot in just 20 minutes!",
      "open_close": "closes soon",
      "price": "280",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      //img10
      "image": "assets/images/image_30.png",
      "name": "Chilli Chicken",
      "description":
          "Boneless chicken is marinated in flavorful sauces, fried until crispy, this is stir fried with lots of ginger, garlic, onions, bell peppers and sauces.",
      "open_close": "closes soon",
      "price": "229",
      "rating": "4.0",
      "orders_count": "(122)"
    },
  ];
  List veg_list = [
    {
      "image": "assets/images/veg_1.png",
      "name": "Aloo Gobi Biryani",
      "description":
          "Aloo Gobi Biryani served with Aloo mixed gobi, mirchi ka salan and raita",
      "open_close": "Open",
      "price": "199",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_2.png",
      "name": "Palak Panner Biryani",
      "description":
          "Palak Panner Biryani served with pure panner with palak, mirchi ka salan and raita",
      "open_close": "Open",
      "price": "280",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_3.png",
      "name": "Mushroom Biryani Handi",
      "description":
          "Mushroom Biryani served with full handi fresh of Mushroom, mirchi ka salan and raita",
      "open_close": "Open",
      "price": "429",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_4.png",
      "name": "Veg Biryani",
      "description":
          "Biryani served with 1 veg piece panner or corn, mirchi ka salan and raita",
      "open_close": "Open",
      "price": "880",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_5.png",
      "name": "Panner Biryani",
      "description":
          "Biryani served with panner piece mushroom or gobi, mirchi ka salan and raita",
      "open_close": "Open",
      "price": "180",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_6.png",
      "name": "Panner Tikka",
      "description":
          "Panner Tikka Kebab is a delicious appetizer that is packed with flavor.",
      "open_close": "Open",
      "price": "249",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_7.png",
      "name": "Pot Biryani",
      "description":
          "Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita",
      "open_close": "Open",
      "price": "329",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_8.png",
      "name": "Veg Fried Rice",
      "description":
          "Veg fried rice, marinated in Indian spices and yogurt and grilled to perfection, will blow your mind away!",
      "open_close": "Open",
      "price": "180",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_9.png",
      "name": "Coconut Panner Curry",
      "description":
          "Easy & healthy Indian Coconut Chicken Curry made in an Instant Pot in just 20 minutes!",
      "open_close": "Open",
      "price": "280",
      "rating": "4.0",
      "orders_count": "(122)"
    },
    {
      "image": "assets/images/veg_10.png",
      "name": "Chilli Gobi Fry",
      "description":
          "Chilli Gobi is marinated in flavorful sauces, fried until crispy, this is stir fried with lots of ginger, garlic, onions, bell peppers and sauces.",
      "open_close": "Open",
      "price": "229",
      "rating": "4.0",
      "orders_count": "(122)"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AppBottomNavigationBar(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // List tile have more....
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 2,
                horizontalTitleGap: -10,
                contentPadding: const EdgeInsets.all(0),
                leading: Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
                title: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonText(
                        'Palamuru Grill',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                subtitle: CommonText(
                  'Opposite Meridian School,Ayyappa society, \nMadhapur,100 Feet Rd,Hyderabad, Telangana 500081',
                  style: TextStyle(fontSize: 10),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          border: Border.all(color: Colors.grey)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 93,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      // background color
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0XFFFA6423), Color(0xFF9A2D08)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText('Delicious',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      CommonText('Indian Couisine',
                          style: TextStyle(color: Colors.white, fontSize: 32)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MenuTabs(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonText('Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    // SizedBox(width: 175),

                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              non_veg = false;
                            });
                          },
                          child: Container(
                            height: 28,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.green),
                                color: !non_veg
                                    ? Colors.green.shade100
                                    : Colors.white),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.adjust,
                                    color: Colors.green,
                                  ),
                                  CommonText(
                                    'Veg',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              non_veg = true;
                            });
                          },
                          child: Container(
                            height: 28,
                            width: 90,
                            decoration: BoxDecoration(
                              color: non_veg
                                  ? Colors.deepOrange.shade100
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.deepOrange),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.adjust,
                                  color: Colors.deepOrange,
                                ),
                                CommonText(
                                  'Non Veg',
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
              ListView.builder(
                itemCount: non_veg ? non_veg_list.length : veg_list.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selected = index;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartScreen()));
                            });
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  child: Image.asset(
                                    non_veg
                                        ? non_veg_list[index]['image']
                                        : veg_list[index]['image'],
                                    fit: BoxFit
                                        .cover, // Use BoxFit.cover to maintain aspect ratio and cover the space
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 10,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  // Add some padding for spacing
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // Use spaceEvenly for consistent spacing
                                    children: [
                                      CommonText(
                                        non_veg
                                            ? non_veg_list[index]['name']
                                            : veg_list[index]['name'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepOrange,
                                          fontSize: 16,
                                        ),
                                      ),
                                      CommonText(
                                        'Biryani served with 1 chicken piece chest or leg, mirchi ka salan and raita',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      SizedBox(height: 8),
                                      CommonText(
                                        index.isOdd ? 'Closes soon' : 'Open',
                                        style: TextStyle(
                                          color: index.isOdd
                                              ? Colors.red
                                              : Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.currency_rupee,
                                            size: 15,
                                          ),
                                          CommonText(
                                            non_veg
                                                ? non_veg_list[index]['price']
                                                : veg_list[index]['price'],
                                            style: TextStyle(
                                              // color: Colors.b,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Row(
                                            children: [
                                              CommonText(
                                                '4',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Icon(
                                                Icons.star,
                                                size: 18,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          CommonText(
                                            '(122)',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: selected == index
                                      ? Colors.redAccent
                                      : Colors.grey.shade300,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: selected == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
