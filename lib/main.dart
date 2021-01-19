import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  MyPageState createState() => new MyPageState();
}

class MyPageState extends State<MyPage> {
  final Random random = Random();
  Color color = Color(0xFFFFFFF);

  void changeColor() {
    setState(() {
      color = Color.fromARGB(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Color Changer"),
        centerTitle: true,
      ),
      body:
      InkWell(
        onTap: changeColor,
        child:
        Container(
          child: Center(
            child: Text("Hey there!",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.teal,
              ),
            ),
          ),
          color: color,
        ),
      ),
    );
  }
}