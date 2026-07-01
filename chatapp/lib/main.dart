import 'package:chatapp/pages/login_screen.dart';
import 'package:chatapp/theme/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: lightMode, home: LoginScreen());
  }
}
