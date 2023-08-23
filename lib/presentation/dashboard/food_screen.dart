import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  List<Map<String, dynamic>> servicesItems = [
    {"image": "assets/images/plate_1.png", "name": "Food"},
    {"image": "assets/images/plate_1.png", "name": "Services"},
    {"image": "assets/images/plate_1.png", "name": "Groceries"},
    {"image": "assets/images/plate_1.png", "name": "Medicine"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
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
                        color: Color(0xff8F8F8F29).withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF5F5F5),
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
              SizedBox(height: 20,),
              Container(
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius:
                  BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/Group_126.png"),
                    fit: BoxFit.cover,
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
