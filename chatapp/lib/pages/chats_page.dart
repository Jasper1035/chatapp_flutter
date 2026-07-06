import 'dart:ui';

import 'package:chatapp/widget/chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  static const String path = '/chats';
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 102,
              pinned: true,
              title: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.ellipsis),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white.withAlpha(40),
                      foregroundColor: Colors.white,
                      iconSize: 20,
                      padding: EdgeInsets.zero,
                      fixedSize: Size(34, 34),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.camera_fill),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white.withAlpha(40),
                      foregroundColor: Colors.white,
                      iconSize: 20,
                      padding: EdgeInsets.zero,
                      fixedSize: Size(34, 34),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.add),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                      iconSize: 20,
                      padding: EdgeInsets.zero,
                      fixedSize: Size(34, 34),
                    ),
                  ),
                ],
              ),
              flexibleSpace: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    color: Colors.black.withAlpha(80),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 55,
                        left: 12,
                        right: 12,
                      ),
                      child: Text(
                        "Chats",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverAppBar(
              expandedHeight: 60,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white.withAlpha(30),
                      isDense: true,
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        size: 25,
                        color: Colors.white.withAlpha(100),
                      ),
                      contentPadding: EdgeInsets.zero,
                      hintStyle: TextStyle(
                        color: Colors.white.withAlpha(100),
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.archivebox,
                        color: Colors.white.withAlpha(110),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Archived",
                        style: TextStyle(
                          color: Colors.white.withAlpha(110),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(indent: 80, color: Colors.white.withAlpha(40)),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),

                ChatTile(
                  name: "Leo",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "09:45",
                  isRead: true,
                ),

                ChatTile(
                  name: "Dave",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:55",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: false,
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
                ChatTile(
                  name: "Mark",
                  message: "Don\"t Forget our meeting Tomorrow",
                  time: "08:45",
                  isRead: true,
                  avatar: NetworkImage('https://i.pravatar.cc/150?img=6'),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
