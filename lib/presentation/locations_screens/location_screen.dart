import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../Config/app_pages.dart';
import '../../utils/rounded_button.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  final Set<Marker> markers = {};

  String address = '';
  String locality = '';
  String streetName = '';
  double latitude = 17.3850;
  double longitude = 78.4867;
  double selectedLatitude = 0.0; // Initialize to some default value
  double selectedLongitude = 0.0; // Initialize to some default value

  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(37.43296265331129, -122.08832357078792),
    zoom: 14.4746,
  );

  Future<void> _newPosition() async {
    final GoogleMapController controller = await _controller.future;
    final CameraPosition newPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(latitude, longitude),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414,
    );

    await controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));

    setState(() {
      // Set address here to trigger a rebuild
      address = 'Fetching address...';
    });

    final addressLoc = await _getAddress(latitude, longitude);
    setState(() {
      address = addressLoc;
    });
  }

  Future<void> _getLocation() async {
    try {
      final LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        final Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);

        setState(() {
          latitude = position.latitude;
          longitude = position.longitude;
        });

        // Add a marker for the user's live location
        markers.add(
          Marker(
            markerId: MarkerId('user_location'),
            position: LatLng(latitude, longitude),
            infoWindow: InfoWindow(title: 'Your Location'),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueOrange),
          ),
        );

        _newPosition();
      } else {
        setState(() {
          // Handle when permission is denied
          address = 'Location permission denied';
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        // Handle any errors that occur during location retrieval
        address = 'Error getting location';
      });
    }
  }

  Future<String> _getAddress(double latitude, double longitude) async {
    final url =
        'https://nominatim.openstreetmap.org/reverse?format=json&lat=$latitude&lon=$longitude';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);

      locality = decodedData['address']['locality'] ?? '';
      streetName = decodedData['address']['road'] ?? '';

      final address = decodedData['display_name'];
      if (locality.isEmpty) {
        final parts = address.split(',');

        if (parts.length >= 2) {
          final desiredPart = parts[1].trim();
          final words = desiredPart.split(' ');
          if (words.isNotEmpty) {
            locality = words[0];
          }
        }
      }
      return address;
    }

    return 'Address not found';
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('Choose delivery location'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            compassEnabled:false,
            mapType: MapType.normal,
            initialCameraPosition: initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: markers, // Display the markers on the map
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              width: 100,
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for area, street name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 160,
            child: Center(
              // Center the button horizontally
              child: GestureDetector(
                onTap: _getLocation,
                child: Container(
                  width: 200, // Set a fixed width
                  height: 50, // Set a fixed height
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.deepOrange,
                    ),
                    // Add rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.my_location, color: Colors.deepOrange),
                      SizedBox(width: 5),
                      Text(
                        'Use Current Location',
                        style: TextStyle(
                          color: Colors.deepOrange, // Text color
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 140,
              color: Colors.white,
              padding: EdgeInsets.only(left: 8.0, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.all(0.0),
                    leading: Icon(
                      Icons.location_pin,
                      size: 35,
                      color: Colors.deepOrange,
                    ),
                    title: Text(locality),
                    subtitle: Text(
                      address,
                      maxLines: 1,
                    ),
                  ),
                  RoundedButton(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    onPressed: address.isNotEmpty
                        ? () {
                            Get.toNamed(
                              Routes.othersAddress,
                              arguments: {
                                'latitude': selectedLatitude,
                                'longitude': selectedLongitude,
                                'address': address,
                                'locality': locality,
                                'street': streetName,
                              },
                            );
                            print('the address was $address');
                          }
                        : null,
                    name: 'Enter complete address',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
