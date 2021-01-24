import 'package:WhatsAppUI/Screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        primaryColorLight: Color(0xff08d261),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
