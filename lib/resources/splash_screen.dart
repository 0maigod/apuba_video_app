import 'package:flutter/material.dart';
import 'dart:async';
import 'package:apubavideoapp/resources/video_list.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _mockCheckForSession().then(
            (status) {
          status?_navigateToHome():_navigateToLoginScreen();
        }
    );
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => VideoList()));
  }

  void _navigateToLoginScreen() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => VideoList()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF5574F7), Color(0xFF60C3FF)],
                ),
              ),
            ),
            Center(
              child: Container(
                height: 80.0,
                child: Image.asset('images/logo_apuba.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
