import 'package:flutter/material.dart';
import 'package:whatsapp/model/chatmodel.dart';

class Chats extends StatefulWidget {
  Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 197, 74, 13),
            onPressed: () {},
            child: Icon(Icons.chat)),
        body: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(dummyData[index].image),
                ),
                title: Text(dummyData[index].name),
                subtitle: Text(dummyData[index].message),
                trailing: Text(dummyData[index].time),
              );
            }));
  }
}
