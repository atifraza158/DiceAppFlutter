import 'dart:async';

import 'package:dice_app/dices.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 15), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return MyDices();
      },));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/titleImages/logo.png",
              width: 300,
            ),
            SizedBox(height: 60),
            CircularProgressIndicator(color: Colors.white),
            SizedBox(height: 100),
            Text(
              "Dice Roller",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Anta",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Roll Dice Images Easily",
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
                fontFamily: "Anta",
              ),
            )
          ],
        ),
      ),
    );
  }
}
