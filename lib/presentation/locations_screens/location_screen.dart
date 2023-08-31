import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../Config/app_pages.dart';
import '../../utils/rounded_button.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart'; // Import the flutter_typeahead package

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
  double selectedLatitude = 0.0;
  double selectedLongitude = 0.0;

  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(37.43296265331129, -122.08832357078792),
    zoom: 14.4746,
  );

  Future<void> _newPosition(double lat, double lng) async {
    final GoogleMapController controller = await _controller.future;
    final CameraPosition newPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(lat, lng),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414,
    );

    await controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));

    setState(() {
      address = 'Fetching address...';
    });

    final addressLoc = await _getAddress(lat, lng);
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

        markers.add(
          Marker(
            markerId: MarkerId('user_location'),
            position: LatLng(latitude, longitude),
            infoWindow: InfoWindow(title: 'Your Location'),
            icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueOrange),
          ),
        );

        _newPosition(latitude, longitude);
      } else {
        setState(() {
          address = 'Location permission denied';
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        address = 'Error getting location';
      });
    }
  }

  Future<String> _getAddress(double latitude, double longitude) async {
    try {
      // Construct the URL for the Google Maps Places API
      final apiKey =
          'AIzaSyBl0Pm1-cZM3-IdYhEkmEQ2A4XxSJpIRdQ'; // Replace with your Google Maps API key
      final url =
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=$latitude,$longitude&key=$apiKey';

      // Send an HTTP GET request to the API
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // Parse the JSON response
        final decodedData = json.decode(response.body);

        // Check if the response contains results
        if (decodedData['results'] != null &&
            decodedData['results'].isNotEmpty) {
          // Extract the locality and street name from the response
          final results = decodedData['results'][0];

          for (final component in results['address_components']) {
            final types = component['types'];
            final name = component['short_name'];

            if (types.contains('locality')) {
              locality = name;
            } else if (types.contains('route')) {
              streetName = name;
            }
          }

          // Create the formatted address
          final formattedAddress = results['formatted_address'];

          // Return the formatted address
          return formattedAddress;
        }
      }
    } catch (e) {
      print('Error: $e');
    }

    // Return a default message if address retrieval fails
    return 'Address not found';
  }

  Future<List<String>> fetchSuggestions(String pattern) async {
    final apiKey = 'AIzaSyBl0Pm1-cZM3-IdYhEkmEQ2A4XxSJpIRdQ';

    final String apiUrl =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=$apiKey';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final predictions = data['predictions'] as List<dynamic>;
        final suggestions = predictions
            .map((prediction) => prediction['description'] as String)
            .toList();
        return suggestions;
      } else {
        throw Exception('Failed to load suggestions');
      }
    } catch (e) {
      print('Error fetching suggestions: $e');
      return [];
    }
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  updatedNewAddress(LatLng newPosition) async {
    // Update latitude and longitude with the new position
    setState(() {
      latitude = newPosition.latitude;
      longitude = newPosition.longitude;
      // Set a loading state for the address
      address = "Fetching address...";
    });

    // Get the updated address and update it in the UI
    final addressLoc = await _getAddress(latitude, longitude);
    setState(() {
      address = addressLoc;
    });
  }

  Future<LatLng?> getCoordinatesFromPlaceName(String placeName) async {
    final places =
        await GeocodingPlatform.instance.locationFromAddress(placeName);
    if (places.isNotEmpty) {
      final location = places.first;
      return LatLng(location.latitude, location.longitude);
    } else {
      // Handle the case where the place name couldn't be resolved.
      return null;
    }
  }

  Future<void> updateMarkerAndAnimateCamera(String placeName) async {
    final coordinates = await getCoordinatesFromPlaceName(placeName);
    if (coordinates != null) {
      final GoogleMapController controller = await _controller.future;

      // Update the marker's position
      setState(() {
        markers.clear();
        markers.add(
          Marker(
            markerId: MarkerId('user_location'),
            position: coordinates,
            draggable: true,
            onDragEnd: (newPosition) {
              print('Marker dragged to: $newPosition');
              // Handle marker drag if needed
            },
          ),
        );
      });

      // Animate the camera to the new marker's position
      controller.animateCamera(
        CameraUpdate.newLatLngZoom(
            coordinates, 15.0), // You can adjust the zoom level
      );
    } else {
      // Handle the case where the place name couldn't be resolved.
      // Show an error message to the user.
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content:
                Text('Could not find coordinates for the provided place name.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
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
            myLocationEnabled: false,
            compassEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: markers,
            onTap: (LatLng position) {
              setState(() {
                // Clear existing markers
                markers.clear();

                // Add a new draggable marker
                markers.add(Marker(
                  markerId: MarkerId('user_location'),
                  position: position,
                  draggable: true,
                  onDragEnd: (newPosition) {
                    print('Marker dragged to: $newPosition');
                    updatedNewAddress(position);
                  },
                ));
                updatedNewAddress(position);
              });
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 20,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TypeAheadField(
                  // Use TypeAheadField for searching
                  textFieldConfiguration: TextFieldConfiguration(
                    decoration: InputDecoration(
                      hintText: 'Search for area, street name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                  suggestionsCallback: (String pattern) async {
                    return await fetchSuggestions(
                        pattern); // Fetch suggestions based on user input
                  },
                  itemBuilder: (BuildContext context, suggestion) {
                    return ListTile(
                      title: Text(suggestion.toString()),
                    );
                  },
                  onSuggestionSelected: (suggestion) {
                    setState(() {
                      updateMarkerAndAnimateCamera(suggestion);
                    });

                    // You can handle the selected suggestion here, for example, update state with the selected location details.
                  },
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 160,
            child: Center(
              child: SizedBox(
                width: 230,
                height: 45,
                child: ElevatedButton(
                  onPressed: _getLocation,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.deepOrange),
                    ),
                    elevation: 5.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.my_location, color: Colors.deepOrange),
                      SizedBox(width: 5),
                      Text(
                        'Use Current Location',
                        style: TextStyle(
                          color: Colors.deepOrange,
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
