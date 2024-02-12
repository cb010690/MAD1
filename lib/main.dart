import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/intropage.dart';
import 'pages/login.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(primarySwatch: Colors.grey),

    routes: {
      '/intropage': (context) => const IntroPage(),
      '/homepage': (context) => const HomePage(),
    }

    
    
    );
  }

}

