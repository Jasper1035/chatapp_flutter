import 'package:chatapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            SizedBox(height: 50),

            //welcome back message
            Text(
              'Welcome Back, You\'ve been missed!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
              ),
            ),

            SizedBox(height: 25),

            // email textfield
            MyTextfield(hintText: 'Enter Your Email', obscure: false),
            SizedBox(height: 20),
            //pw textfield
            MyTextfield(hintText: 'Enter Your Password', obscure: true),
          ],
        ),
      ),
    );
  }
}
