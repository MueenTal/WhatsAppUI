import 'package:WhatsAppUI/Screens/calls.dart';
import 'package:WhatsAppUI/Screens/status.dart';
import 'package:flutter/material.dart';

import 'chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

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
          title: Text('WhatsApp'),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(12),
            tabs: [
              Icon(Icons.camera_alt),
              Container(
                  width: 90, alignment: Alignment.center, child: Text('CHATS')),
              Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Text('STATUS')),
              Container(
                  width: 90, alignment: Alignment.center, child: Text('CALLS'))
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Text('CAMERA'),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ChatScreen(
                        image: 'assets/images/user.png',
                        title: 'mohammed',
                      ),
                    ],
                  );
                }),
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    StatusScreen(
                      image: "assets/images/user.png",
                    )
                  ],
                );
              },
            ),
            ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CallsScreen(
                      image: "assets/images/user.png",
                      title: "Ali",
                    )
                  ],
                );
              },
            )
          ],
        ),
        floatingActionButton: _tabController.index == 1
            ? FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                child: Icon(Icons.message),
              )
            : FloatingActionButton(
                onPressed: () {},
                backgroundColor: Theme.of(context).primaryColorLight,
                child: Icon(Icons.camera_alt),
              ));
  }
}
