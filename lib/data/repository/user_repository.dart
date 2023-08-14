import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../utils/constants.dart';
import '../model/user_model.dart';
import '../services/api_service.dart';


class UserRepository {

  final ApiService apiService = ApiService();

  Future<UserModel> registerUser(String mobile, String email) async {
    return await apiService.registerUser(mobile, email);
  }

  Future<AuthModel> loginUser(String mobile, String email) async {
    final response = await http.post(
      Uri.parse(Constants.signupUrl),
      body: {
        'mobile': mobile,
        'email': email,
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final AuthModel user = AuthModel(
        status: responseData['status'],
        message: responseData['message'],
      );
      return user;
    } else {
      throw Exception('Failed to login');
    }
  }
}
