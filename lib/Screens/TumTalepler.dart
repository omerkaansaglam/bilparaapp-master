import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';

import 'NavController.dart';

class TumTaleplerPage extends StatefulWidget {
  @override
  _TumTaleplerPageState createState() => _TumTaleplerPageState();
}

class _TumTaleplerPageState extends State<TumTaleplerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Example()),
              );
            },
          ),
        title: Text("Tüm Taleplerim"),
        backgroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
            textColor: Colors.black,
            onPressed: () {
              print('TalepOlustur');
            },
            child: Text("Talep Oluştur + "),
          ),
        ],

      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Divider(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: (){
                        print('TalepDetayGit');
                      },
                      child: ListTile(
                        title: Text(
                          "BilCoin Bozdurma",
                          style: TextStyle(fontSize: 13),
                        ),
                        leading: talepOnay(false),
                        trailing: Text(
                          "Tarih : " + " 07.01.2021 " + "Tutar : " + " ₺50",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),


                  ],
                ),
              );
            },
          )),
    );
  }

  Widget talepOnay(bool sorgu) {
    return sorgu == true
        ? Container(
      child: Icon(Icons.check, color: Color(0xffffffff), size: 24.0),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0.0),
      decoration: BoxDecoration(
        color: Color(0xff03b673),
        borderRadius: BorderRadius.all(Radius.circular(100.0)),
      ),
    )
        : Container(
      child: Icon(Icons.dangerous, color: Color(0xffffffff), size: 24.0),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0.0),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.all(Radius.circular(100.0)),
      ),
    );
  }
}
