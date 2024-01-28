import 'package:bmicalculator/InputScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        hintColor: Colors.pinkAccent,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.pinkAccent),
        ),
      ),
      home: InputScreen(),
    );
  }
}
