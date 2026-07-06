import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  static const String path = '/main';
  final StatefulNavigationShell statefulNavigationShell;
  const MainPage({super.key, required this.statefulNavigationShell});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.statefulNavigationShell,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
          child: Container(
            color: Colors.black.withAlpha(100),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              iconSize: 25,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white.withAlpha(140),
              selectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              elevation: 0,

              items: [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.add_circled),
                  activeIcon: Icon(CupertinoIcons.add_circled_solid),
                  label: 'Updates',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.phone),
                  activeIcon: Icon(CupertinoIcons.phone_fill),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.group),
                  activeIcon: Icon(CupertinoIcons.group_solid),
                  label: 'Communities',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_2),
                  activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings),
                  activeIcon: Icon(CupertinoIcons.settings),
                  label: 'Settings',
                ),
              ],
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
