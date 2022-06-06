import 'package:flutter/material.dart';
import 'package:medco/Auth/signup.dart';
import 'package:medco/tools/constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var time = Duration(seconds: 2);
    Future.delayed(time, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Signup()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Image.asset(
          "assets/images/Logo.png",
          scale: 5,
          height: _height / 5,
        ),
      ),
    );
  }
}
