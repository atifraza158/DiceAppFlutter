import 'package:flutter/material.dart';
import 'dart:math';

class MyDices extends StatefulWidget {
  const MyDices({super.key});

  @override
  State<MyDices> createState() => _MyDicesState();
}

class _MyDicesState extends State<MyDices> {
  int image1 = 3;
  int image2 = 2;
  int image3 = 5;
  int image4 = 1;
  int image5 = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Dice App"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.all(10),
                    elevation: 0,
                  ),
                  onPressed: () {
                    setState(() {
                      image1 = Random().nextInt(6);
                    });
                  },
                  child: Image(
                    image: AssetImage("assets/diceImages/dice$image1.png"),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.all(10),
                        elevation: 0,
                      ),
                      onPressed: () {
                        setState(() {
                          image2 = Random().nextInt(6);
                        });
                      },
                      child: Image(
                        image: AssetImage("assets/diceImages/dice$image2.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        padding: EdgeInsets.all(10),
                        elevation: 0,
                      ),
                      onPressed: () {
                        setState(() {
                          image3 = Random().nextInt(6);
                        });
                      },
                      child: Image(
                        image: AssetImage("assets/diceImages/dice$image3.png"),
                      ),
                    ),
                  ),

                ],
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.all(10),
                    elevation: 0,
                  ),
                  onPressed: () {
                    setState(() {
                      image4 = Random().nextInt(6);
                    });
                  },
                  child: Image(
                    image: AssetImage("assets/diceImages/dice$image4.png"),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
