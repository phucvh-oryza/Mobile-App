import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final Dio _dio = Dio();
  final storage = FlutterSecureStorage();

  Future<String> login(String email, String password) async {
    final response = await _dio.post(
      'http://192.168.103.57:3100/api/login',
      data: {'Email': email, 'password': password},
    );
    final token = response.data['token'];
    print('Token: ' + token);
    await saveToken(token);
    return token;
  }

  Future<void> saveToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    final token = await storage.read(key: 'token');
    print(
        '_________________________________________________________________________________');
    print(token);
    return token;
  }

  Future<void> logout() async {
    await storage.delete(key: 'token');
  }

  Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }
}
// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class AuthService {
//   final Dio _dio = Dio();
//   late SharedPreferences _prefs;

//   Future<void> initPrefs() async {
//     _prefs = await SharedPreferences.getInstance();
//   }

//   Future<String> login(String email, String password) async {
//     final response = await _dio.post(
//       'http://192.168.130.2:3000/user/auth/login',
//       data: {'Email': email, 'Password': password},
//     );
//     final token = response.data['access_token'];
//     await saveToken(token);
//     return token;
//   }

//   Future<void> saveToken(String token) async {
//     await _prefs.setString('access_token', token);
//   }

//   Future<String?> getToken() async {
//     final token = _prefs.getString('access_token');
//     return token;
//   }

//   Future<void> logout() async {
//     await _prefs.remove('access_token');
//   }

//   Future<bool> isLoggedIn() async {
//     final token = await getToken();
//     return token != null && token.isNotEmpty;
//   }
// }
