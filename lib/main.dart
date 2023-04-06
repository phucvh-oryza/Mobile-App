import 'package:app_erp/screen/home/homepage_screen.dart';
import 'package:app_erp/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_erp/auth/auth_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  Future<void> _checkIfLoggedIn() async {
    final isLoggedIn = await AuthService().isLoggedIn();
    setState(() {
      _isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: _isLoggedIn ? HomePage() : LoginScreen(),
        ),
      ),
    );
  }
}
