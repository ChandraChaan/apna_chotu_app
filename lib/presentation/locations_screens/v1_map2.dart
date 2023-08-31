//
// Future<List<AutoCompleteResult>> searchPlaces(String searchInput) async {
// final String url =
// "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$searchInput&key=$key";
// var response = await http.get(Uri.parse(url));
// var json = convert.jsonDecode(response.body);
// var result = json["predictions"] as List;
// return result.map((e) => AutoCompleteResult.fromJson(e)).toList();
// }