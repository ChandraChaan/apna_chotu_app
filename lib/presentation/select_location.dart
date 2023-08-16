import 'package:apna_chotu_app/Config/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [SizedBox(height: 10,),
            SizedBox(height: 50,
              child: Row(
                children: [
                Icon(Icons.chevron_left),
                Text('Select')
              ],),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[300],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.mic),
                    onPressed: () {
                      // Perform voice search action
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
            ),
            const Center(
                child: ListTile(
              minLeadingWidth: 0,
              leading: Icon(
                Icons.near_me,
                color: Colors.red,
              ),
              title: Text(
                'Use My Current Location',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
              subtitle: Text('Rahimpur, Dattatreya Nagar, Hyderabad'),
            )),
             const Divider(thickness: 1),
             ListTile(
              minLeadingWidth: 2,
              onTap: (){
                Get.toNamed(Routes.auth);
              },
              leading: Icon(
                Icons.add_sharp,
                color: Colors.red,
              ),
              title: Text(
                'Add New Address',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const Divider(thickness: 1),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text(
                    'Nearby Location',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Petals Accessories',
                    style: TextStyle(color: Colors.red),
                  ),
                  subtitle: Text(
                      'Karwan Road, Rahimpura, Dattatreya Nagar, Hyderabad'),
                ),
                Divider(thickness: 1),
              ],
            )
          ],
        ),
      ),
    );
  }
}
