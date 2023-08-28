import 'dart:async';
import 'dart:convert';
import 'package:apna_chotu_app/utils/rounded_button.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  String address = '';
  double latitude = 17.3850;
  double longitude = 78.4867;

  // Define the initial camera position for the map
  CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.43296265331129, -122.08832357078792),
    zoom: 14.4746,
  );

  // Function to set a new camera position
  newPosition() async {
    final GoogleMapController controller = await _controller.future;
    CameraPosition newPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(latitude, longitude),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414,
    );
    // Future.delayed(const Duration(seconds: 2), () async {
    await controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
    setState(() {});
    // });
  }

  // Function to get the user's location
  Future<void> _getLocation() async {
    try {
      // Check for location permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        // Get current location
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        setState(() {
          latitude = position.latitude;
          longitude = position.longitude;
        });

        // Set a new camera position based on the user's location
        newPosition();

        // Get the address based on the user's location
        final addressLoc = await getAddress(latitude, longitude);
        setState(() {
          address = addressLoc; // Update the address
        });
      } else {
        // Handle when permission is denied
        setState(() {
          latitude = latitude;
          longitude = longitude;
        });
      }
    } catch (e) {
      print(e);
      // Handle any errors that occur during location retrieval
      setState(() {
        latitude = latitude;
        longitude = longitude;
      });
    }
  }

  // Function to get the address based on latitude and longitude
  Future<String> getAddress(double latitude, double longitude) async {
    final url =
        'https://nominatim.openstreetmap.org/reverse?format=json&lat=$latitude&lon=$longitude';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      final address = decodedData['display_name'];
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
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.satellite,
            initialCameraPosition: kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          SafeArea(
            child: Container(
                child: Row(
              children: [
                Icon(Icons.arrow_back),
                Text('Choose delivery location')
              ],
            )),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 90,
                padding: EdgeInsets.all(16.0),
                color: Colors.white,
                child: RoundedButton(
                  onPressed: () {},
                  name: 'Enter complete address',
                ),
              ))
        ],
      ),
    );
  }
}
