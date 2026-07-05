// import 'package:chatapp/auth/auth_service.dart';
import 'package:chatapp/components/my_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: MyDrawer(),
    );
  }
}
