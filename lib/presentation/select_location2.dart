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
          children: [
            const SizedBox(
              height: 40,
              child: Row(
                children: [
                  Icon(Icons.chevron_left, size: 25),
                  Text(
                    'Select a Location',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.mic,
                      size: 30,
                      color: Colors.deepOrange,
                    ),
                    onPressed: () {
                      // Perform voice search action
                    },
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
            ),const Divider(thickness: 1),
                  ListTile(
              minLeadingWidth: 0,
                    onTap: (){},
                    leading: const Icon(
                Icons.near_me,
                color: Colors.deepOrange,
              ),
              title: const Text(
                'Use My Current Location',
                style: TextStyle(color: Colors.deepOrange, fontSize: 12),
              ),
              subtitle: const Text('Rahimpur, Dattatreya Nagar, Hyderabad'),
            ),
             const Divider(thickness: 1),
            ListTile(
              minLeadingWidth: 0,
              onTap: () {
                Get.toNamed(Routes.newAddressScreen);
              },
              leading: const Icon(
                Icons.add_sharp,
                color: Colors.deepOrange,
              ),
              title: const Text(
                'Add New Address',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
            const Divider(thickness: 1),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text(
                    'Nearby Location',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.location_on, color: Colors.deepOrange),
                  title: Padding(
                    padding: EdgeInsets.only(top: 13),
                    child: Text(
                      'Petals Accessories',
                    ),
                  ),
                  subtitle: Text(
                      'Karwan Road, Rahimpura, Dattatreya Nagar, Hyderabad'),
                ),
              ],
            ),
            const Divider(thickness: 1),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text(
                    'Recent Location',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.location_on, color: Colors.deepOrange),
                  title: Text(
                    'Hakimpura',
                  ),
                  subtitle: Text('Rahimpura, Dattatreya Nagar, Hyderabad'),
                ),
                Divider(thickness: 1)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
