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

  String address = '';
  String locality = '';
  String streetName = '';
  double latitude = 17.3850;
  double longitude = 78.4867;

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
            mapType: MapType.normal,
            initialCameraPosition: initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 90,
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: RoundedButton(
                onPressed: address.isNotEmpty
                    ? () {
                        Get.toNamed(
                          Routes.othersAddress,
                          arguments: {
                            'latitude': latitude,
                            'longitude': longitude,
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
            ),
          )
        ],
      ),
    );
  }
}
