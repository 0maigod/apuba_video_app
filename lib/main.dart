import 'package:flutter/material.dart';
import 'package:apubavideoapp/resources/splash_screen.dart';


void main() => runApp(MaterialApp(home: SplashScreen()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
//        scaffoldBackgroundColor: Color(0xFF11143A),

      ),

      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
//        '/nav': (context) => NavigationBar(),
//        '/quienes': (context) => QuienesVienen(),
      },
    );
  }
}