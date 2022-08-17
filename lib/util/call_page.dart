import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  final profileImage;
  final name;
  final callTypeIcon;
  final icon;
  final color;
  final subtitleDate;
  final subtitleTime;

  CallPage({
    required this.profileImage,
    required this.name,
    required this.callTypeIcon,
    required this.icon,
    required this.color,
    required this.subtitleDate,
    required this.subtitleTime,
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
          subtitle: Row(
            children: [
              Icon(
                icon,
                color: color,
              ),
              SizedBox(width: 10),
              Text(
                subtitleDate,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                subtitleTime,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
          trailing: Icon(
            callTypeIcon,
            size: 30,
            color: Colors.teal,
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
