import 'package:chat_app/methods.dart';
import 'package:flutter/material.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => logOut(),
          child: Text("Logut"),
        ),
      ),
    );
  }
}
