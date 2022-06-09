import 'package:flutter/material.dart';
import 'package:whatsapp/model/statusmodel.dart';

class Status extends StatefulWidget {
  Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff075e54),
          onPressed: () {},
          child: Icon(Icons.camera_alt)),
      body: Container(
        child: ListView.builder(
            itemCount: whatsappStatuses.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(whatsappStatuses[index].statuspic),
                ),
                title: Text(whatsappStatuses[index].name),
                subtitle: Text(whatsappStatuses[index].time),
              );
            }),
      ),
    );
  }
}
