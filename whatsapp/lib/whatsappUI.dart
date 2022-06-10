import 'package:flutter/material.dart';
import 'package:whatsapp/view/calls.dart';
import 'package:whatsapp/view/camera.dart';
import 'package:whatsapp/view/chats.dart';
import 'package:whatsapp/view/status.dart';

class WhatsappUI extends StatefulWidget {
  WhatsappUI({Key? key}) : super(key: key);

  @override
  State<WhatsappUI> createState() => _WhatsappUIState();
}

class _WhatsappUIState extends State<WhatsappUI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          title: Text("Whatsapp Clone"),
          backgroundColor: Color.fromARGB(255, 197, 74, 13),
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [Camera(), Chats(), Status(), Calls()],
        ),
      ),
    );
  }
}
