//
// Future<Map<String, dynamic>> getPlace(
// String? input, BuildContext context) async {
// final String url =
// "https://maps.googleapis.com/maps/api/place/details/json?place_id=$input&key=$key";
// var response = await http.get(Uri.parse(url));
// var json = convert.jsonDecode(response.body);
// var result = json["result"] as Map<String, dynamic>;
// nbp.yourLocation.text = result["formatted_address"];
// nbp.urLocation = result["formatted_address"];
// notifyListeners();
// // Future.delayed(const Duration(seconds: 0), () {
// Navigator.pushAndRemoveUntil(
// context,
// MaterialPageRoute(builder: (context) => NewBookingScreen(lat:result["geometry"]["location"]["lat"],long:result["geometry"]["location"]["lng"],yourLocation:nbp.urLocation,)),
// (route) => false,
// );
// // });
// return result;
// }