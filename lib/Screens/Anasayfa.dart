import 'package:bilparaapp/Screens/HizliYaris.dart';
import 'package:bilparaapp/Screens/ProfilScreen.dart';
import 'package:bilparaapp/Screens/TumTalepler.dart';
import 'package:dashed_circle/dashed_circle.dart';
import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  final iconlar = [
    Icon(
      Icons.person,
      size: 50,
    ),
    Icon(
      CupertinoIcons.game_controller,
      size: 50,
    ),
    Icon(
      CupertinoIcons.envelope,
      size: 50,
    ),
    Icon(
      CupertinoIcons.game_controller,
      size: 50,
    ),
    Icon(
      CupertinoIcons.home,
      size: 50,
    ),
    Icon(
      CupertinoIcons.settings,
      size: 50,
    ),
  ];

  final sayfaGecis = [
    ProfilScreen(),
    HizliYarisPage(),
    TumTaleplerPage(),
    ProfilScreen(),
    ProfilScreen(),
    ProfilScreen(),
  ];
  Animation gap;
  Animation base;
  Animation reverse;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 4), vsync: this);
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String txt = "omeromeromer";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TumTaleplerPage()),
            );
          },
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.notifications),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //BAŞLIK BÖLÜMÜ CONTAINER
            Container(
                height: 130,
                alignment: Alignment.center,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          RotationTransition(
                            turns: base,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                DashedCircle(
                                  gapSize: gap.value,
                                  dashes: 10,
                                  color: Colors.amber,
                                  child: RotationTransition(
                                    turns: reverse,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                        maxRadius: 38,
                                        backgroundImage: NetworkImage(
                                            "https://randomuser.me/api/portraits/men/44.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(txt.length < 10
                              ? txt
                              : txt.substring(0, 5) + "...")
                        ],
                      ),
                    );
                  },
                )),
            //gövde

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(colors: [
                        Colors.amber[300],
                        Colors.white,
                      ])),
                  child: ListTile(
                    trailing: Container(
                      width: 140,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: FlareActor("lib/Assets/bilcoin.flr",
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                animation: "Untitled"),
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Text(
                            "10000",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.grey[800]),
                          ))
                        ],
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1564564295391-7f24f26f568b"),
                    ),
                    title: Text(
                      "Emre Otacıoğlu",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    subtitle: Text("eotacioglu"),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 400,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: iconlar.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => sayfaGecis[index]));
                        print(sayfaGecis[index]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          color: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: iconlar[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
            //bitiş
          ],
        ),
      ),
    );
  }
}
