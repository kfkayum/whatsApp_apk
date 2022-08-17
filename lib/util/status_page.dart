import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  final profileImage;
  final name;
  final postedTime;

  StatusPage({
    required this.profileImage,
    required this.name,
    required this.postedTime,
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
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 85, 63, 63),
            ),
          ),
          subtitle: Text(
            postedTime,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
