import 'package:chatapp/services/auth/auth_service.dart';
import 'package:chatapp/components/my_button.dart';
import 'package:chatapp/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final void Function()? onTap;

  //log in method

  Future<void> login(BuildContext context) async {
    //auth service
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
        _emailController.text,
        _passwordController.text,
      );
    } catch (e) {
      showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (context) => AlertDialog(title: Text(e.toString())),
      );
    }
  }

  LoginScreen({super.key, required this.onTap});

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
            MyTextfield(
              hintText: 'Enter Your Email',
              obscure: false,
              controller: _emailController,
            ),
            SizedBox(height: 20),
            //pw textfield
            MyTextfield(
              hintText: 'Enter Your Password',
              obscure: true,
              controller: _passwordController,
            ),

            SizedBox(height: 35),
            //log in button
            MyButton(text: 'Log in', onTap: () => login(context)),

            SizedBox(height: 25),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Register now!',
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
