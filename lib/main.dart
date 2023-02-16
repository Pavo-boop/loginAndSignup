import 'package:flutter/material.dart';
//import 'package:untitled3/loginscreen/loginscreen.dart';
import 'package:untitled3/screens/loginscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  const LoginScreen(),
    );
  }
}

