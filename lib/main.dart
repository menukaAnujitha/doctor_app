import 'package:flutter/material.dart';
import 'package:doctor_app/home_page.dart';


void main() {

 runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // change defult flutter color in search bar icon and coursor
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}