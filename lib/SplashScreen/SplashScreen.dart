import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutor_eye_app/AuthPages/splashScreen.dart';
import 'package:tutor_eye_app/NavigateFiles/router.dart';
class FirstPage_SplashScreen extends StatefulWidget {
  const FirstPage_SplashScreen({Key key}) : super(key: key);

  @override
  _FirstPage_SplashScreenState createState() => _FirstPage_SplashScreenState();
}

class _FirstPage_SplashScreenState extends State<FirstPage_SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () =>
        Navigator.push(
          context,
          PageTransition(
            duration: Duration(milliseconds: 200),
            type: PageTransitionType.rightToLeft,
            child: SplashScreen(),
                )
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/Splash.jpg",
        height: 300.sh,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

