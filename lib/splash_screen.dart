import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'package:flutter/services.dart';

var assetImage = AssetImage("assets/splash.png");
var image = Image(
  image: assetImage,
);

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // splash screen colour
      body: SafeArea(
        child: Container(
          child: image,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
