// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:innews/View/Splash.dart';

import 'View/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;
  showSplashScreen(){
    Future.delayed(Duration(seconds:3),(){
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
      setState(() {
        showSplash = false;
      });
    });
  }
  @override
  void initState() {
    showSplashScreen();
    super.initState();
  }
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I-News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showSplash?Splash(): Home(),
    );
  }
}