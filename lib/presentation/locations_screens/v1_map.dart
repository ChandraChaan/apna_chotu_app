// import 'dart:async';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:my_kabin_app/components/dialog.dart';
// import 'package:my_kabin_app/components/label_widget.dart';
// import 'package:my_kabin_app/models/new_booking/auto_complete_result.dart';
// import 'package:my_kabin_app/providers/new_booking/maps_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/rendering.dart';
// import 'dart:typed_data';
// import 'dart:ui' as ui;
//
// class GoogleMapsNewBooking extends StatefulWidget {
// const GoogleMapsNewBooking({Key? key}) : super(key: key);
//
// @override
// State<GoogleMapsNewBooking> createState() => GoogleMapsNewBookingState();
// }
//
// class GoogleMapsNewBookingState extends State<GoogleMapsNewBooking> {
// final Completer<GoogleMapController> mapController =
// Completer<GoogleMapController>();
// final TextEditingController searchCont = TextEditingController();
//
//
// ///Providers
// late PlaceResultsProvider allSearchResult;
// late SearchToggle searchFlag;
//
// /// Toggling UI as we need
// bool searchToggle = true;
// bool radiusSlider = false;
// bool cardTapped = false;
// bool pressedNear = false;
// bool getDirections = false;
//
// Timer? debounce;
// int markerIdCounter = 1;
// double lat = 0.0;
// double long = 0.0;
//
// final List<Marker> markers = <Marker>[];
//
// @override
// void initState() {
// allSearchResult = Provider.of<PlaceResultsProvider>(context, listen: false);
// searchFlag = Provider.of<SearchToggle>(context, listen: false);
// super.initState();
// }
//
// Future<Uint8List> getBytesFromAsset(String path, int width) async {
// ByteData data = await rootBundle.load(path);
// ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
// targetWidth: width);
// ui.FrameInfo fi = await codec.getNextFrame();
// return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
//     .buffer
//     .asUint8List();
// }
//
// Future getUserLocation() async {
// onLoading(context, true);
// bool serviceEnabled;
// LocationPermission permission;
//
// serviceEnabled = await Geolocator.isLocationServiceEnabled();
// if (!serviceEnabled) {
// return Future.error('Location services are disabled.');
// }
//
// permission = await Geolocator.checkPermission();
// if (permission == LocationPermission.denied) {
// permission = await Geolocator.requestPermission();
// if (permission == LocationPermission.denied) {
// return Future.error('Location permissions are denied');
// }
// }
//
// if (permission == LocationPermission.deniedForever) {
// return Future.error(
// 'Location permissions are permanently denied, we cannot request permissions.');
// }
//
// if (serviceEnabled && permission == LocationPermission.whileInUse) {
// Position position = await Geolocator.getCurrentPosition(
// desiredAccuracy: LocationAccuracy.high);
// LatLng latLngPosition = LatLng(position.latitude, position.longitude);
// CameraPosition cameraPosition =
// CameraPosition(target: latLngPosition, zoom: 14);
// final GoogleMapController controller = await mapController.future;
// controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
// List<Placemark> placeMark =
// await placemarkFromCoordinates(position.latitude, position.longitude);
// if (placeMark.isNotEmpty) {
// dismissDialog(true);
// lat = position.latitude;
// long = position.longitude;
// print(lat);
// print(long);
// final Uint8List currentMarkerIcon = await getBytesFromAsset(
// 'assets/images/user_current_location.png', 50);
// markers.add(
// Marker(
// markerId: MarkerId('current_location'),
// position: LatLng(lat, long),
// icon: BitmapDescriptor.fromBytes(currentMarkerIcon),
// ),
// );
// allSearchResult.callNotify();
// }
// }
// }
//
// void setMarker(point,) {
// var counter = markerIdCounter++;
// final Marker marker = Marker(
// markerId: MarkerId("marker$counter"),
// position: point,
// onTap: () {},
// icon: BitmapDescriptor.defaultMarker);
// markers.add(marker);
// allSearchResult.callNotify();
// }
//
// @override
// Widget build(BuildContext context) {
// final screenHeight = MediaQuery.of(context).size.height;
// final screenWidth = MediaQuery.of(context).size.width;
// return Scaffold(
// appBar: AppBar(
// backgroundColor: Colors.transparent,
// elevation: 0.0, // remove the shadow
// leading: IconButton(
// icon: const Icon(Icons.arrow_back),
// color: Colors.black,
// onPressed: () {
// Navigator.pop(context);
// },
// ),
// ),
// body: Consumer<PlaceResultsProvider>(
// builder: (_, allSearchResult, child) {
// return SingleChildScrollView(
// child: Column(
// children: [
// Stack(
// children: [
// SizedBox(
// height: screenHeight,
// width: screenWidth,
// child: GoogleMap(
// mapType: MapType.normal,
// myLocationEnabled: true,
// myLocationButtonEnabled: true,
// initialCameraPosition: CameraPosition(
// target: LatLng(lat, long),
// zoom: 14.4746,
// ),
// onMapCreated: (GoogleMapController controller) {
// mapController.complete(controller);
// getUserLocation();
// },
// markers: Set<Marker>.of(markers),
// gestureRecognizers: <
// Factory<OneSequenceGestureRecognizer>>{
// Factory<OneSequenceGestureRecognizer>(
// () => EagerGestureRecognizer()),
// },
// ),
// ),
// searchToggle
// ? Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10, vertical: 50),
// child: Container(
// height: 50,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(15),
// ),
// child: TextFormField(
// controller: searchCont,
// decoration: InputDecoration(
// labelStyle: const TextStyle(
// fontSize: 17,
// fontWeight: FontWeight.w600),
// border: InputBorder.none,
// hintText: "Search",
// hintStyle: const TextStyle(
// fontSize: 17,
// fontWeight: FontWeight.w500),
// contentPadding: const EdgeInsets.symmetric(
// horizontal: 0, vertical: 15),
// prefixIcon: const Icon(Icons.search,
// color: Colors.grey),
// suffixIcon: IconButton(
// onPressed: () {
// allSearchResult.callNotify();
// searchCont.text = '';
// // searchToggle = false;
// markers.clear();
// if (searchFlag.searchToggle) {
// searchFlag.toggleSearch();
// }
// },
// icon: const Icon(Icons.close,
// color: Colors.grey)),
// ),
// onChanged: (value) {
// if (debounce?.isActive ?? false) {
// debounce?.cancel();
// }
// debounce =
// Timer(const Duration(microseconds: 700),
// () async {
// if (value != null) {
// if (!searchFlag.searchToggle) {
// searchFlag.toggleSearch();
// markers.clear();
// }
// List<AutoCompleteResult> searchResult =
// await allSearchResult
//     .searchPlaces(value);
// allSearchResult.setResults(searchResult);
// } else {
// List<AutoCompleteResult> emptyList = [];
// allSearchResult.setResults(emptyList);
// }
// });
// },
// ),
// ))
//     : const SizedBox.shrink(),
// searchFlag.searchToggle
// ? allSearchResult.allReturnedResults.isNotEmpty
// ? Positioned(
// top: 100.0,
// left: 15.0,
// child: Container(
// height: 200.0,
// width: screenWidth - 30.0,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10.0),
// color: Colors.white.withOpacity(0.7)),
// child: ListView(
// children: [
// ...allSearchResult.allReturnedResults.map(
// (e) => buildListItem(e, searchFlag))
// ],
// ),
// ))
//     : Consumer<SearchToggle>(
// builder: (_, searchFlag, child) {
// return Positioned(
// top: 100.0,
// left: 15.0,
// child: Container(
// height: 200.0,
// width: screenWidth - 30.0,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius.circular(10.0),
// color: Colors.white.withOpacity(0.7)),
// child: Center(
// child: Column(
// children: [
// const SizedBox(
// height: 20.0,
// ),
// const LabelWidget(
// "No results to show",
// fontWeight: FontWeight.w500,
// size: 17),
// const SizedBox(
// height: 20.0,
// ),
// SizedBox(
// width: 125.0,
// child: ElevatedButton(
// onPressed: () {
// searchFlag.toggleSearch();
// },
// child: const LabelWidget(
// "Close this",
// fontWeight:
// FontWeight.w500,
// size: 16)),
// )
// ],
// ),
// ),
// ));
// })
//     : const SizedBox.shrink()
// ],
// )
// ],
// ),
// );
// },
// ),
// // floatingActionButton: FabCircularMenu(
// //    alignment: Alignment.bottomLeft,
// //    fabColor: Colors.blue.shade50,
// //    fabOpenColor: Colors.red.shade100,
// //    ringDiameter: 250.0,
// //    ringWidth: 60.0,
// //    ringColor: Colors.red.shade100,
// //    fabSize: 60.0,
// //    children: [
// //      IconButton(
// //          onPressed: () {
// //            searchToggle = true;
// //            radiusSlider = false;
// //            pressedNear = false;
// //            cardTapped = false;
// //            getDirections = false;
// //            allSearchResult.callNotify();
// //          },
// //          icon: const Icon(Icons.search)),
// //      IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
// //      IconButton(onPressed: () {}, icon: const Icon(Icons.navigation))
// //    ]),
// );
// }
//
// Future<void> goToSearchPlace(double lat, double lon) async {
// final GoogleMapController controller = await mapController.future;
// controller.animateCamera(CameraUpdate.newCameraPosition(
// CameraPosition(target: LatLng(lat, lon), zoom: 12)));
// setMarker(LatLng(lat, lon));
// }
//
// Widget buildListItem(AutoCompleteResult placeItem, searchFl) {
// return Padding(
// padding: const EdgeInsets.all(8),
// child: GestureDetector(
// onTapDown: (_) {
// FocusManager.instance.primaryFocus?.unfocus();
// },
// onTap: () async {
// var place =
// await allSearchResult.getPlace(placeItem.placeId, context);
// searchCont.text = place["formatted_address"];
// goToSearchPlace(place['geometry']['location']['lat'],
// place['geometry']['location']['lng']);
// searchFlag.toggleSearch();
// },
// child: Row(
// children: [
// const Icon(
// Icons.location_on,
// color: Colors.green,
// size: 25.0,
// ),
// const SizedBox(
// width: 4.0,
// ),
// SizedBox(
// height: 50.0,
// width: MediaQuery.of(context).size.width - 75.0,
// child: Align(
// alignment: Alignment.centerLeft,
// child: Text(placeItem.description ?? ""),
// ),
// )
// ],
// ),
// ),
// );
// }
// }
