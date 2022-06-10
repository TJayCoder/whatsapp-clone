import 'package:flutter/material.dart';
import 'package:whatsapp/model/callsmodel.dart';

class Calls extends StatefulWidget {
  Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 197, 74, 13),
            onPressed: () {},
            child: Icon(Icons.call)),
        body: ListView.builder(
            itemCount: callsHistory.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(callsHistory[index].propic),
                ),
                title: Text(callsHistory[index].name),
                subtitle: Text(callsHistory[index].time),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
              );
            }));
  }
}
