import 'dart:async';

import 'package:body_coach/screens/authentication/landing/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  _startTimer() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, _route);
  }

  _route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (ctx) => LandingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
//          SizedBox(
//            height: 50,
//          ),
//          SvgPicture.asset(
//            "assets/icons/undraw_working_out_6psf.svg",
//            height: 250,
//          ),
//          SizedBox(
//            height: 20,
//          ),
          Center(
            child: Image.asset(
              "assets/icons/BodyCo_Logo_Charcoal.png",
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
