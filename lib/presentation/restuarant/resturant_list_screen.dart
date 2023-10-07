import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:apna_chotu_app/presentation/restuarant/non_veg_menu.dart';
import 'package:apna_chotu_app/presentation/restuarant/restuarant_details.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_text.dart';
import '../../common/buttom_navigation_bar.dart';
import '../../utils/menu_tabs.dart';
import 'common_grid_view.dart';

class RestaurantListScreen extends StatefulWidget {
  final int index;

  const RestaurantListScreen({super.key, required this.index});

  @override
  State<RestaurantListScreen> createState() => _RestaurantListScreenState();
}

class _RestaurantListScreenState extends State<RestaurantListScreen> {
  List<Map<String, dynamic>> listItems = [
    {
      //img 1
      "image": "assets/images/image_2.png",
      "likes": "10292",
      "isliked": false,
      "name": "Flechazo Madhapur",
      "subTitle": "HUDA Texhno ENclage, Madhapur",
      "km": "15.5 Km, 1hour",
      "rating": "4.o"
    },
    {
      //img 2
      "image": "assets/images/image_3.png",
      "likes": "8938",
      "isliked": true,
      "name": "Palamuru Grill",
      "subTitle": "Ayyappa society, Madhapur",
      "km": "12.2 Km, 55 mins",
      "rating": "3.9",
    },
    {
      //img 3
      "image": "assets/images/image_4.png",
      "likes": "3759",
      "isliked": false,
      "name": "T-Grill",
      "subTitle": "CBI Colony, Madhapur",
      "km": "10.5 Km, 55 mins",
      "rating": "3.8"
    },
    {
      //img 4
      "image": "assets/images/image_5.png",
      "likes": "10292",
      "isliked": true,
      "name": "Aazebo-The Royal",
      "subTitle": "Sri Sai Nagar, Madhapur",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
    {
      //img 5
      "image": "assets/images/image_6.png",
      "likes": "2901",
      "isliked": false,
      "name": "GUDGUDEE Restaurant",
      "subTitle": "Inorbit Mall,Street No-2,Madhapur",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      //img 6
      "image": "assets/images/image_7.png",
      "likes": "10292",
      "isliked": true,
      "name": "The5inest Restaurant",
      "subTitle": "Arunodaya Colony,Madhapur",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      //img 7
      "image": "assets/images/image_8.png",
      "likes": "2325",
      "isliked": false,
      "name": "Lassi Bistro Madhapur",
      "subTitle": "Sri Sai Nagar, Madhapur",
      "km": "12.0 Km, 52 mins",
      "rating": "3.7"
    },
    {
      //img 8
      "image": "assets/images/image_9.png",
      "likes": "3782",
      "isliked": true,
      "name": "Bluefox Madhapur",
      "subTitle": "HUDA Techno Enclave, Madhapur",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
  ];

  // List<Map<String, dynamic>> listitemsscroll = [
  //   {
  //     "image": "assets/images/rectangle_2.png",
  //     "name": "THE JOINT AL-MANDI",
  //     "subTitle": "Arunodaya Housing Colony,Madhapur",
  //     "discount_price": "RS 299/-",
  //     "orignal_pice": "499/-"
  //   },
  //   {
  //     "image": "assets/images/rectangle_2.png",
  //     "name": "THE JOINT AL-MANDI",
  //     "subTitle": "Arunodaya Housing Colony,Madhapur",
  //     "discount_price": "RS 299/-",
  //     "orignal_pice": "499/-"
  //   }
  // ];

  //services list
  List<Map<String, dynamic>> services_List = [
    {
      "image": "assets/images/service_1.png",
      "likes": "10292",
      "isliked": false,
      "name": "Bathroom Cleaning",
      "subTitle": "Bathroom cleaning of all areas",
      "km": "15.5 Km, 1hour",
      "rating": "4.0"
    },
    {
      "image": "assets/images/service_2.png",
      "likes": "8938",
      "isliked": false,
      "name": "Electrical Work",
      "subTitle": "All type of electrical work",
      "km": "15.5 Km, 55 mins",
      "rating": "3.9"
    },
    {
      "image": "assets/images/service_3.png",
      "likes": "2092",
      "isliked": false,
      "name": "Pets Control",
      "subTitle": "Cockroch Ant & General",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_4.png",
      "likes": "2901",
      "isliked": false,
      "name": "Car Repair",
      "subTitle": "All types of Cars services available",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
    {
      "image": "assets/images/service_5.png",
      "likes": "1423",
      "isliked": false,
      "name": "Furniture Repair",
      "subTitle": "All types of furniture repairs",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_6.png",
      "likes": "3759",
      "isliked": false,
      "name": "Tuitions",
      "subTitle": "Tuitions for all classes",
      "km": "10.5 Km, 55 mins",
      "rating": "3.8"
    },
    {
      "image": "assets/images/service_7.png",
      "likes": "2325",
      "name": "Gym",
      "isliked": false,
      "subTitle": "Full a/c gym",
      "km": "12.0 Km, 52 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_8.png",
      "likes": "3782",
      "name": "Bike Services",
      "isliked": false,
      "subTitle": "Bike repair services",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
  ];
  List<Map<String, dynamic>> grocery_List = [
    {
      "image": "assets/images/service_1.png",
      "likes": "10292",
      "isliked": false,
      "name": "Soaps",
      "subTitle": "Bathroom cleaning of all areas",
      "km": "15.5 Km, 1hour",
      "rating": "4.0"
    },
    {
      "image": "assets/images/service_2.png",
      "likes": "8938",
      "isliked": false,
      "name": "Electrical Work",
      "subTitle": "All type of electrical work",
      "km": "15.5 Km, 55 mins",
      "rating": "3.9"
    },
    {
      "image": "assets/images/service_3.png",
      "likes": "2092",
      "isliked": false,
      "name": "Pets Control",
      "subTitle": "Cockroch Ant & General",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_4.png",
      "likes": "2901",
      "isliked": false,
      "name": "Car Repair",
      "subTitle": "All types of Cars services available",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
    {
      "image": "assets/images/service_5.png",
      "likes": "1423",
      "isliked": false,
      "name": "Furniture Repair",
      "subTitle": "All types of furniture repairs",
      "km": "11.8 Km, 45 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_6.png",
      "likes": "3759",
      "isliked": false,
      "name": "Tuitions",
      "subTitle": "Tuitions for all classes",
      "km": "10.5 Km, 55 mins",
      "rating": "3.8"
    },
    {
      "image": "assets/images/service_7.png",
      "likes": "2325",
      "name": "Gym",
      "isliked": false,
      "subTitle": "Full a/c gym",
      "km": "12.0 Km, 52 mins",
      "rating": "3.7"
    },
    {
      "image": "assets/images/service_8.png",
      "likes": "3782",
      "name": "Bike Services",
      "isliked": false,
      "subTitle": "Bike repair services",
      "km": "12.2 Km, 55 mins",
      "rating": "3.8"
    },
  ];

  @override
  Widget build(BuildContext context) {
    if (widget.index == 1) {
      return CommonGridView(
        items: listItems,
      );
    }
    else if(widget.index == 2){
      return CommonGridView(
        items: grocery_List,
      );
    }
    else {
      return CommonGridView(
        items: services_List,
      );
    }
  }

}
