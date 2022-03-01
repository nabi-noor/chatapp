import 'package:chat_app_demo/api/firebase_api.dart';
import 'package:chat_app_demo/pages/chat_page.dart';
import 'package:chat_app_demo/pages/chats_page.dart';
import 'package:chat_app_demo/users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi.addRandomUsers(Users.initUsers);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Firebase Chat';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: ChatsPage(),
  );
}