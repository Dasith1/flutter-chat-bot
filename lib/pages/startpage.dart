import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ai_bot/pages/homepage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class startpage extends StatefulWidget {
  const startpage({super.key});

  @override
  State<startpage> createState() => _startpageState();
}

class _startpageState extends State<startpage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (ctx) => const Homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/bot.png"),
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'AI CHAT BOT ',
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontFamily: AutofillHints.birthdayMonth,
                  color: Colors.red),
            ),
            SpinKitSpinningLines(
              color: Colors.purple,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
