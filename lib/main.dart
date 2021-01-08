import 'package:bilparaapp/Screens/Anasayfa.dart';
import 'package:bilparaapp/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.amber,
          accentColor: Colors.purple,
          buttonColor: Colors.amber),
      home: SplashPage(),

    );
  }
}
