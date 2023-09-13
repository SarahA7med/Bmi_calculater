import 'package:flutter/material.dart';
import 'package:untitled/Bmi_Screen.dart';
import 'package:untitled/login_screen.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen()
    );
  }

}



