import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  final Function()? onTap;

  //register method
  void register() {}

  RegisterPage({super.key, required this.onTap});

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
              'Let\'s Create an Account for you',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 20,
              ),
            ),

            SizedBox(height: 25),

            // email textfield
            MyTextfield(
              hintText: 'Enter Your Email',
              obscure: false,
              controller: _emailController,
            ),
            SizedBox(height: 20),
            //pw textfield
            MyTextfield(
              hintText: 'Password',
              obscure: true,
              controller: _passwordController,
            ),
            SizedBox(height: 20),
            MyTextfield(
              hintText: 'Confirm Password',
              obscure: true,
              controller: _confirmController,
            ),

            SizedBox(height: 35),
            //log in button
            MyButton(text: 'Register', onTap: register),

            SizedBox(height: 25),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an Account?  ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Login now!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
