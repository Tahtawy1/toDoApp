import 'package:flutter/material.dart';
import 'package:to_do_list_app/views/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do List App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Color(0xff007AFF),
        fontFamily: 'LexendDeca',
      ),
      home: WelcomeView(),
    );
  }
}
