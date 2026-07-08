// import 'dart:nativewrappers/_internal/vm/bin/vmservice_io.dart';

import 'package:chatapp/components/my_textfield.dart';
import 'package:chatapp/services/auth/auth_service.dart';
import 'package:chatapp/services/chat/chat_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String receiverEmail;
  final String receiverID;
  ChatPage({super.key, required this.receiverEmail, required this.receiverID});

  final TextEditingController messageController = TextEditingController();

  final ChatService chatService = ChatService();
  final AuthService authService = AuthService();

  void sendMessage() async {
    if (messageController.text.isNotEmpty) {
      await chatService.sendMessage(receiverID, messageController.text);
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(receiverEmail)),
      body: Column(
        children: [
          Expanded(child: buildMessageList()),
          buildUserInput(),
        ],
      ),
    );
  }

  Widget buildMessageList() {
    String senderID = authService.getCurrentUser()!.uid;
    return StreamBuilder(
      stream: chatService.getMessages(receiverID, senderID),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error');
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Text('Loading...');
        }

        return ListView(
          children: snapshot.data!.docs
              .map((doc) => buildMessageItem(doc))
              .toList(),
        );
      },
    );
  }

  Widget buildMessageItem(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Text(data['message']);
  }

  Widget buildUserInput() {
    return Row(
      children: [
        Expanded(
          child: MyTextfield(
            hintText: 'type a message',
            obscure: false,
            controller: messageController,
          ),
        ),
        IconButton(onPressed: sendMessage, icon: Icon(Icons.send)),
      ],
    );
  }
}
