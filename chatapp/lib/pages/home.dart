// import 'package:chatapp/auth/auth_service.dart';
import 'dart:io';

import 'package:chatapp/components/my_drawer.dart';
import 'package:chatapp/services/auth/auth_service.dart';
import 'package:chatapp/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      drawer: MyDrawer(),
      body: buildUserList(),
    );
  }

  Widget buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUserStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text('Loading...');
        }

        return ListView();
      },
    );
  }
}
