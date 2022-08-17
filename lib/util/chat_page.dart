import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final profileImage;
  final name;
  final subTitletext;
  final time;
  ChatPage({
    required this.profileImage,
    required this.name,
    required this.subTitletext,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(profileImage),
            radius: 30,
          ),
          title: Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 85, 63, 63),
            ),
          ),
          subtitle: Text(
            subTitletext,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          trailing: Text(
            time,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        // SizedBox(
        //   height: 2,
        //   child: Container(
        //     color: Colors.grey[300],
        //   ),
        // ),
      ],
    );
  }
}
