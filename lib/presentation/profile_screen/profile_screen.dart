import 'package:apna_chotu_app/Presentation/auth_screen.dart';
import 'package:apna_chotu_app/common/app_text.dart';
import 'package:apna_chotu_app/presentation/order_history/help_screen.dart';
import 'package:apna_chotu_app/presentation/order_history/invite_friends.dart';
import 'package:apna_chotu_app/presentation/order_history/order_history.dart';
import 'package:apna_chotu_app/presentation/order_history/rate_your_meal.dart';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

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
                horizontalTitleGap: -10,
                contentPadding: const EdgeInsets.all(4),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                  onPressed: () {
                    Get.back();
                  },
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
              SizedBox(height: 5),
              Container(
                height: 140,
                color: Color(0xFFF3F3F3),
                child: Padding(
                  padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset('assets/images/vector.png'),
                          ),
                          SizedBox(width: 5),
                          CommonText(
                            'My Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          SizedBox(width: 240),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.grey,
                                ),
                                onTap: () {},
                              ),
                              Icon(
                                Icons.expand_less,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            'Name',
                            style: TextStyle(
                                fontSize: 10, color: Colors.deepOrange),
                          ),
                          CommonText(
                            'Mobile',
                            style: TextStyle(
                                fontSize: 10, color: Colors.deepOrange),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            'vinay Khatri',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          CommonText(
                            '8121213346',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              'Emain Address',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.deepOrange),
                            ),
                            CommonText(
                              'City',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.deepOrange),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText('vishw.vinay@gmail.com',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          CommonText('Hyderabad,TS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderHistoryScreen()));
                },
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'My Orders',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InviteFriends()));
                },
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'Refer and Earn',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'Terms of Service',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'My Subscription',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InviteFriends()));
                },
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'Invite Friends',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RateYourMeal()));
                },
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'Rate US',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HelpScreen()));
                },
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        SizedBox(width: 6),
                        CommonText(
                          'Help',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 32,
                  width: double.infinity,
                  color: Color(0xFFF3F3F3),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Row(
                        children: [
                          Image.asset('assets/images/vector.png'),
                          SizedBox(width: 6),
                          CommonText(
                            'Logout',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogoutScreen()));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: AlertDialog(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 375,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 17),
                    Image(image: AssetImage('assets/images/group_3286.png')),
                    SizedBox(height: 17),
                    CommonText(
                      'Comeback Soon!',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                    Center(
                      child: CommonText(
                        'Are you sure you want to Logout?',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(height: 17),
                    Center(
                      child: Container(
                        height: 40,
                        width: 210,
                        child: RoundedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AuthScreen()));
                            },
                            name: 'Yes, Logout'),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: CommonText(
                        'Cancel',
                        style:
                            TextStyle(color: Colors.deepOrange, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
