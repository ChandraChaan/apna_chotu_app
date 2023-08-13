import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/user_model.dart';


class UserRepository {
  Future<UserModel> loginUser(String username, String password) async {
    final response = await http.post(
      Uri.parse('YOUR_LOGIN_API_URL'),
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final UserModel user = UserModel(
        id: responseData['id'],
        username: responseData['username'],
        email: responseData['email'],
      );
      return user;
    } else {
      throw Exception('Failed to login');
    }
  }
}
