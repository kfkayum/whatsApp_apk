import 'package:flutter/material.dart';
import 'package:whats_app_apk/util/call_page.dart';
import 'package:whats_app_apk/util/chat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          actions: [
            const Icon(
              Icons.search,
              size: 25,
            ),
            const SizedBox(width: 5),
            PopupMenuButton(
              elevation: 30,
              icon: const Icon(
                Icons.more_vert_outlined,
                size: 25,
              ),
              itemBuilder: (
                context,
              ) =>
                  const [
                PopupMenuItem(
                  value: "1",
                  child: Text(
                    "New Group",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: "2",
                  child: Text(
                    "New broadcast",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: "3",
                  child: Text(
                    "Link devices",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: "4",
                  child: Text(
                    "Starred message",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: "5",
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt_outlined),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Tab(
              child: Text(
                "STORY",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Tab(
              child: Text(
                "CALL",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Alisa',
                    profileImage: 'asset/images/women2.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Zara',
                    profileImage: 'asset/images/women3.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/women1.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men3.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men1.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/women1.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                  ChatPage(
                    name: 'Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    subTitletext: 'hello WOrld',
                    time: '12.00 AM',
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                  Text(
                    'NO story Found',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CallPage(
                    name: 'Mohammad Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    callTypeIcon: Icons.video_call_sharp,
                    icon: Icons.call,
                    color: Colors.green,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                  CallPage(
                    name: 'Abid Hossain',
                    profileImage: 'asset/images/men5.jpg',
                    callTypeIcon: Icons.spatial_audio_rounded,
                    icon: Icons.call_end,
                    color: Colors.red,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                  CallPage(
                    name: 'Alisa ',
                    profileImage: 'asset/images/women2.jpg',
                    callTypeIcon: Icons.spatial_audio_rounded,
                    icon: Icons.call_missed,
                    color: Colors.blue,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                  CallPage(
                    name: 'Zara',
                    profileImage: 'asset/images/women1.jpg',
                    callTypeIcon: Icons.video_call_sharp,
                    icon: Icons.call,
                    color: Colors.green,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                  CallPage(
                    name: 'Mohammad Kayum',
                    profileImage: 'asset/images/men2.jpg',
                    callTypeIcon: Icons.video_call_sharp,
                    icon: Icons.call,
                    color: Colors.green,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                  CallPage(
                    name: 'Abid Hossain',
                    profileImage: 'asset/images/men5.jpg',
                    callTypeIcon: Icons.spatial_audio_rounded,
                    icon: Icons.call_end,
                    color: Colors.red,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                  CallPage(
                    name: 'Alisa ',
                    profileImage: 'asset/images/women2.jpg',
                    callTypeIcon: Icons.spatial_audio_rounded,
                    icon: Icons.call_missed,
                    color: Colors.blue,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                  CallPage(
                    name: 'Zara',
                    profileImage: 'asset/images/women1.jpg',
                    callTypeIcon: Icons.video_call_sharp,
                    icon: Icons.call,
                    color: Colors.green,
                    subtitleDate: "12 August",
                    subtitleTime: '12.15 AM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
