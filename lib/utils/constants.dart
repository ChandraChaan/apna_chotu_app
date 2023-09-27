import 'package:flutter/material.dart';

class Constants {
  // Colors
  static const primaryColor = Color(0xFF6200EE);
  static const secondaryColor = Color(0xFFBB86FC);
  static const accentColor = Color(0xFF03DAC6);

  // Fonts
  static const defaultFont = 'Roboto';

  // API URLs
  static const baseUrl = 'https://openteqdev.com/Apnachotu_dev/api/user';
  static const loginUrl = '$baseUrl/login';
  static const verifyOtp = '$baseUrl/verify_otp';
  static const signupUrl = '$baseUrl/register';
  static const categeoryUrl = '$baseUrl/register';

//https://openteqdev.com/Apnachotu_dev/api/vendor/fetch_categories
  // Other Constants
  static const apiKey = 'api_key';
  static const version = '1.0.0';
}
