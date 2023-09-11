import 'package:apna_chotu_app/common/app_text.dart';
import 'package:apna_chotu_app/common/buttom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final ExpansionTileController controller = ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // List tile have more....
              ListTile(
                minLeadingWidth: 0,
                minVerticalPadding: 0,
                horizontalTitleGap: 10,
                contentPadding: const EdgeInsets.all(4),
                leading: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.black,
                ),
                title: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonText(
                        'Hey',
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        CommonText(
                          'Vinay khatri',
                          style: TextStyle(fontSize: 23, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        CommonText(
                          'Wallet Balance - Rs - 1160.65/-',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile_picture.png'),
                        radius: 23,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 112,
                color: Colors.deepOrange,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CommonText(
                                  '94',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                CommonText(
                                  'Orders',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CommonText(
                                  '23',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                CommonText(
                                  'Contacted',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CommonText(
                                  '73',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                CommonText(
                                  'Reviewed',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              // Column(
              //   children: <Widget>[
              //     ExpansionTile(
              //       title: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [Text('Profile'), Icon(Icons.edit)],
              //       ),
              //       children: <Widget>[
              //         Builder(
              //           builder: (BuildContext context) {
              //             return Container(
              //               padding: const EdgeInsets.all(24),
              //               alignment: Alignment.center,
              //               child: const Text('Name'),
              //             );
              //           },
              //         ),
              //       ],
              //     ),
              //     ExpansionTile(
              //       title: Text('My Orders'),
              //       children: <Widget>[
              //         Builder(
              //           builder: (BuildContext context) {
              //             return Container(
              //               padding: const EdgeInsets.all(24),
              //               alignment: Alignment.center,
              //               child: const Text('Orders'),
              //             );
              //           },
              //         ),
              //       ],
              //     ),
              //     ExpansionTile(
              //       title: Text('Refer and Earn'),
              //       children: <Widget>[
              //         Builder(
              //           builder: (BuildContext context) {
              //             return Container(
              //               padding: const EdgeInsets.all(24),
              //               alignment: Alignment.center,
              //               child: const Text('Refer'),
              //             );
              //           },
              //         ),
              //       ],
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
