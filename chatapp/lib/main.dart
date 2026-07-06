import 'package:chatapp/router4/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(WhatsApp1());
}

class WhatsApp1 extends StatelessWidget {
  const WhatsApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
