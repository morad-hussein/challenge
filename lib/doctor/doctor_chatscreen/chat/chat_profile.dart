import 'package:flutter/material.dart';
import 'package:projectfinal/doctor/doctor_chatscreen/chat/chat_item.dart';


class ChatScreenProfile extends StatefulWidget {
  const ChatScreenProfile({Key? key}) : super(key: key);

  @override
  State<ChatScreenProfile> createState() => _ChatScreenProfileState();
}

class _ChatScreenProfileState extends State<ChatScreenProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 10,
            bottom: 10.0),
        child: ListView.separated(

          itemBuilder: (context, index) =>
              ChatItem(),
          separatorBuilder: (context, index) =>
              SizedBox(
            height: 20,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
