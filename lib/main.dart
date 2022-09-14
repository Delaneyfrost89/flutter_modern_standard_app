// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modern_std_app/pages/home_page.dart';
import 'package:modern_std_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
