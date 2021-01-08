import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bilparaapp/Screens/NavController.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HizliYarisPage extends StatefulWidget {
  @override
  _HizliYarisPageState createState() => _HizliYarisPageState();
}

class _HizliYarisPageState extends State<HizliYarisPage> {
  List catBaslik = [
    "Spor Alanı Soruları",
    "Tarih Alanı Soruları",
    "Teknoloji Alanı Soruları",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("BilPara"),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Example()),
            );
          },
        ),

      ),

      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(30))),
              elevation: 20,
              shadowColor: Colors.blueAccent,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.green,
                      Colors.lightGreen,
                    ]),
                    borderRadius:
                    BorderRadius.all(Radius.circular(30))),
                child: Column(
                  children: [
                    ListTile(
                      title: FadeAnimatedTextKit(
                        duration: Duration(seconds: 1),
                        pause: Duration(milliseconds: 50),
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                        text: [
                          catBaslik[index],
                          catBaslik[index]
                        ],
                        textStyle: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,color: Colors.white
                        ),
                        textAlign: TextAlign.start,
                      ),
                      trailing: Container(
                        child: FlareActor("lib/Assets/sporcategoryicon.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "Untitled"),
                        width: 150,
                        height: 50,
                      ),
                    ),
                    Card(

                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                      elevation: 10,
                      shadowColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          gradient: LinearGradient(colors: [
                            Colors.redAccent,
                            Colors.red,

                          ]
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Icon(CupertinoIcons.person_2,size: 30,color: Colors.white,),
                            title: Text("Birebir Karşılaşma",style: TextStyle(color: Colors.white),),
                            trailing: RichText(
                              text: TextSpan(
                                text: "Bedel : ",
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                    decoration:
                                    TextDecoration.none),

                                children: <TextSpan>[
                                  TextSpan(
                                      text: '3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 16,
                                          decoration:
                                          TextDecoration.none)),
                                  TextSpan(
                                      text: ' Jeton',
                                      style: TextStyle(
                                          color: Colors.white,
                                          decoration:
                                          TextDecoration.none)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(

                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(30))),
                      elevation: 10,
                      shadowColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(colors: [
                              Colors.redAccent,
                              Colors.red,

                            ]
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: Icon(CupertinoIcons.person_3,size: 30,color: Colors.white,),
                            title: Text("4'lü Karşılaşma",style: TextStyle(color: Colors.white),),
                            trailing: RichText(
                              text: TextSpan(
                                text: "Bedel : ",
                                style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16,
                                    decoration:
                                    TextDecoration.none),

                                children: <TextSpan>[
                                  TextSpan(
                                      text: '3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 16,
                                          decoration:
                                          TextDecoration.none)),
                                  TextSpan(
                                      text: ' Jeton',
                                      style: TextStyle(
                                          color: Colors.white,
                                          decoration:
                                          TextDecoration.none)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
