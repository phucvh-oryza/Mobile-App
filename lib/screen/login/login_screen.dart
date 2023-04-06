import 'dart:convert';

import 'package:app_erp/screen/home/homepage_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../auth/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();
  String _email = '';
  String _password = '';
  final AuthService _authService = AuthService();
  // void _login() async {
  //   try {
  //     // Tạo instance của Dio
  //     final dio = Dio();
  //     // Thực hiện yêu cầu GET với url là "https://example.com/api/login"
  //     final response = await dio
  //         .post('http://192.168.130.2:3000/user/auth/login', queryParameters: {
  //       'Email': _emailController.text,
  //       'Password': _passwordController.text,
  //     });
  //     // Xử lý response
  //     if (response.statusCode == 201) {
  //       // Lưu token vào SharedPreferences
  //       final prefs = await SharedPreferences.getInstance();
  //       await prefs.setString('access_token', response.data['access_token']);
  //       // Hiển thị snackbar và chuyển sang màn hình HomeScreen
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //           content: Text('Đăng nhập thành công'),
  //         ),
  //       );
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => HomeScreen(),
  //         ),
  //       );
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text('Đăng nhập thất bại'),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text('Đăng nhập thất bại: $e'),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 120.0,
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
                height: 50.0,
              ),
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  // controller: _emailController,
                  onChanged: (value) {
                    _email = value;
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // set border radius here
                      borderSide: BorderSide.none, // remove border here
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey[700],
                    ),
                    labelStyle: TextStyle(
                      color:
                          Colors.grey[700], // set the color of the label text
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email address';
                    }

                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  // controller: _passwordController,
                  onChanged: (value) {
                    _password = value;
                  },
                  cursorColor: Colors.black,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none, // remove border here
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey[700],
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey[700],
                      ),
                    ),
                    labelStyle: TextStyle(
                      color:
                          Colors.grey[700], // set the color of the label text
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text.rich(
                  TextSpan(
                    text: 'Bằng việc nhấn đăng nhập, bạn đồng ý với các\n',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12.0,
                      color: Colors.grey[700],
                    ),
                    children: [
                      TextSpan(
                        text: 'Điều khoản dịch vụ ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      TextSpan(
                        text: 'và ',
                      ),
                      TextSpan(
                        text: 'Chính sách bảo mật',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' của chúng tôi!',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Quên mật khẩu?',
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            try {
                              await _authService.login(_email, _password);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Đăng nhập thất bại: $e'),
                                ),
                              );
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[700],
                          minimumSize: Size(120, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
