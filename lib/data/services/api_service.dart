import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/user_model.dart';

class ApiService {
  final String baseUrl = 'https://openteqdev.com/Apnachotu_dev/api/';

  Future<UserModel> registerUser(String mobile, String email) async {
    final response = await http.post(
      Uri.parse('${baseUrl}user/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'mobile': mobile, 'email': email}),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      return UserModel.fromJson(responseData);
    } else {
      throw Exception('Failed to register user');
    }
  }
}
