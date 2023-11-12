import 'package:flutter/material.dart';
import 'package:flutter_ai_bot/pages/startpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AI BOT",
      theme: ThemeData(brightness: Brightness.light),
      home: startpage(),
    );
  }
}
