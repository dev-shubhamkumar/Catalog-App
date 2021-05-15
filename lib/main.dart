import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;

    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome to My Flutter App. It's a $days app!"),
          ),
        ),
      ),
    );
  }
}
