import 'package:flutter/material.dart';
import 'package:projectfinal/doctor/doctor_chatscreen/chat/chat_item.dart';

class DoctorChatScreen extends StatefulWidget {
  const DoctorChatScreen({Key? key}) : super(key: key);

  @override
  State<DoctorChatScreen> createState() => _DoctorChatScreenState();
}

class _DoctorChatScreenState extends State<DoctorChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
             automaticallyImplyLeading: false,
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
