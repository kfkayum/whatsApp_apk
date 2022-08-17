import 'package:flutter/material.dart';
import 'package:whats_app_apk/util/call_page.dart';
import 'package:whats_app_apk/util/chat_page.dart';
import 'package:whats_app_apk/util/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            elevation: 30,
            itemBuilder: (context) => const [
              PopupMenuItem(value: '1', child: Text('New Group')),
              PopupMenuItem(value: '2', child: Text('New broadcast')),
              PopupMenuItem(value: '3', child: Text('Link devices')),
              PopupMenuItem(value: '4', child: Text('Starred message')),
              PopupMenuItem(value: '5', child: Text('Settings')),
            ],
          ),
        ],
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              const Tab(
                child: Icon(Icons.camera_alt_outlined),
              ),
              Container(
                width: 85,
                alignment: Alignment.center,
                child: const Tab(
                  child: Text(
                    "CHATS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 85,
                alignment: Alignment.center,
                child: const Tab(
                  child: Text(
                    "STORY",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 85,
                alignment: Alignment.center,
                child: const Tab(
                  child: Text(
                    "CALLS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        // Cameta Page

        Text('Camera'),

        // Chats Page

        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ChatPage(
                profileImage: 'asset/images/men1.jpg',
                name: 'Abid Hossain',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/women1.jpeg',
                name: 'Zara ',
                subTitletext: 'Hello',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/men2.jpg',
                name: ' Mahadi Hasan',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/women2.jpeg',
                name: 'Jenifer',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/men3.jpeg',
                name: 'Mohammad Kayum',
                subTitletext: 'Hello',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/women3.jpeg',
                name: 'Olivia',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/men1.jpg',
                name: 'Abid Hossain',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/women1.jpeg',
                name: 'Zara ',
                subTitletext: 'Hello',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/men2.jpg',
                name: ' Mahadi Hasan',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/women2.jpeg',
                name: 'Jenifer',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/men3.jpeg',
                name: 'Mohammad Kayum',
                subTitletext: 'Hello',
                time: '04.25 PM',
              ),
              ChatPage(
                profileImage: 'asset/images/women3.jpeg',
                name: 'Olivia',
                subTitletext: 'Call Me again ',
                time: '04.25 PM',
              ),
            ],
          ),
        ),

        // Status Page

        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('asset/images/men1.jpg'),
                  radius: 30,
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 85, 63, 63),
                  ),
                ),
                subtitle: Text(
                  'Tap to add status update',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 20,
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'View update',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              StatusPage(
                profileImage: 'asset/images/men3.jpeg',
                name: "Abid Hossain ",
                postedTime: 'Yeasterday 12.02 pm',
              ),
              StatusPage(
                profileImage: 'asset/images/men2.jpg',
                name: "Mohammad Kayum",
                postedTime: 'Today 12.02 pm',
              ),
              StatusPage(
                profileImage: 'asset/images/women3.jpeg',
                name: "Jenifer",
                postedTime: 'Today 12.02 pm',
              ),
            ],
          ),
        ),

        //  Call Page
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
                name: ' Abid',
                profileImage: 'asset/images/men1.jpg',
                callTypeIcon: Icons.spatial_audio,
                icon: Icons.call_end,
                color: Colors.red,
                subtitleDate: "12 August",
                subtitleTime: '12.15 AM',
              ),
              CallPage(
                name: 'Kokhon Vai',
                profileImage: 'asset/images/men3.jpeg',
                callTypeIcon: Icons.video_call_sharp,
                icon: Icons.call,
                color: Colors.green,
                subtitleDate: "12 August",
                subtitleTime: '12.15 AM',
              ),
              CallPage(
                name: ' Jenifer',
                profileImage: 'asset/images/women1.jpeg',
                callTypeIcon: Icons.spatial_audio,
                icon: Icons.call_end,
                color: Colors.red,
                subtitleDate: "12 August",
                subtitleTime: '12.15 AM',
              ),
            ],
          ),
        ),
      ]),
      floatingActionButton: _tabController.index == 1
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.message),
            )
          : _tabController.index == 2
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.camera_alt_outlined),
                )
              : FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.phone_in_talk),
                ),
    );
  }
}
