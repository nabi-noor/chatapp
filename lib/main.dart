import 'package:flutter/material.dart';
import 'package:chat_app_demo/pages/signin.dart';
import 'package:chat_app_demo/pages/register.dart';
import 'package:chat_app_demo/pages/chat.dart';
import 'package:chat_app_demo/pages/chat_room.dart';


void main() => runApp(MaterialApp(
  home: Splash(),
));


class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Text("Some random text")
      ),
    );
  }
}