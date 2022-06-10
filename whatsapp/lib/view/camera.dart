import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff075e54),
          onPressed: () {},
          child: Icon(Icons.camera)),
      body: Center(
        child: Text(
          "Camera",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
