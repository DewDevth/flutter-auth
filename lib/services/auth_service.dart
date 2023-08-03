import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<bool> registerUser(Map data) async {
    const url = 'http://localhost:4001/api/v1/register';
    final uri = Uri.parse(url);

    final response = await http.post(
      uri,
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    return response.statusCode == 201;
  }

  static Future<Map<String, dynamic>> loginUser(Map data) async {
    const url = 'http://localhost:4001/api/v1/login';
    final uri = Uri.parse(url);

    final response = await http.post(
      uri,
      body: jsonEncode(data),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    // print(response.body);
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      // เก็บ token ลงใน SharedPreferences
      await saveTokenToSharedPreferences(responseData['token'], responseData);
      // print(responseData['token']);

      return responseData;
    } else {
      // Return an empty map if the login was not successful
      return {};
    }
  }

  // ฟังก์ชันในการเก็บ token ลงใน SharedPreferences
  static Future<void> saveTokenToSharedPreferences(
      String token, Map<String, dynamic> user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    // Convert the user Map to a JSON string before saving
    await prefs.setString('user', jsonEncode(user));
  }
}
