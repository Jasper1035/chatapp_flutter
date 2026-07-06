import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.isRead,
    this.avatar,
  });

  final String name;
  final String message;
  final String time;
  final bool isRead;
  final ImageProvider? avatar;

  Color getBackgroundColor(String seed) {
    final hue = (seed.codeUnits.fold(0, (a, b) => a + b) % 360).toDouble();
    return HSLColor.fromAHSL(1.0, hue, 0.5, 0.20).toColor();
  }

  Color getIconColor(String seed) {
    final hue = (seed.codeUnits.fold(0, (a, b) => a + b) % 360).toDouble();
    return HSLColor.fromAHSL(1.0, hue, 0.6, 0.65).toColor();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 31,
                backgroundImage: avatar,
                backgroundColor: avatar == null
                    ? getBackgroundColor(name)
                    : null,
                child: avatar == null
                    ? Icon(
                        CupertinoIcons.person_fill,
                        color: getIconColor(name),
                      )
                    : null,
              ),
              SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 4),
                    Row(
                      children: [
                        if (isRead) ...[
                          Icon(
                            Icons.done_all_rounded,
                            color: Color(0xff24aeff),
                          ),
                          SizedBox(width: 4),
                        ],
                        Flexible(
                          child: Text(
                            message,
                            style: TextStyle(
                              color: Colors.white.withAlpha(190),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Text(
                time,
                style: TextStyle(
                  color: Colors.white.withAlpha(190),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.white.withAlpha(40), indent: 80),
      ],
    );
  }
}
