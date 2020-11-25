import 'package:flutter/material.dart';

class MeetPage extends StatefulWidget {
  @override
  _MeetPageState createState() => _MeetPageState();
}

class _MeetPageState extends State<MeetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Meet',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      drawer: Drawer(),
    );
  }
}
