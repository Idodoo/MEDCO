import 'package:flutter/material.dart';
import 'package:medco/Auth/login.dart';
import 'package:medco/Auth/signup.dart';
import 'package:medco/splashscreen.dart';
import 'package:medco/tools/constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MEDCO',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          backgroundColor: white,
        ),
        home: Login(),
      );
}
