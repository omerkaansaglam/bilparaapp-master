import 'dart:async';

import 'package:bilparaapp/Screens/Anasayfa.dart';
import 'package:bilparaapp/Screens/GirisSlider.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    super.initState();
    NavigatePage();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(child: new FlareActor("lib/Assets/bilparalogo.flr", alignment:Alignment.center, fit:BoxFit.contain, animation:"Untitled"),

    color: Colors.white,
    );
  }

  NavigatePage() async{

    var duration = new Duration(seconds: 2);
    return new Timer(duration, ()=>{
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GirisPage()))
    } );

  }

}
