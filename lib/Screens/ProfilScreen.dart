
import 'package:bilparaapp/Screens/KartHesapEklePage.dart';
import 'package:bilparaapp/Screens/NavController.dart';
import 'package:bilparaapp/Screens/TumTalepler.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Example()),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1564564295391-7f24f26f568b"),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Container(
                            child: FlareActor("lib/Assets/bilcoin.flr",
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                animation: "Untitled"),
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: '54 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        decoration: TextDecoration.none,
                                        color: Colors.black)),
                                TextSpan(
                                    text: 'Jeton',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        decoration: TextDecoration.none)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Emre" + " OTACIOĞLU"),
                          Text(
                            "Profil Bilgilerim",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Divider(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: (){
                            kadiDuzenle(1);
                          },
                          child: ListTile(
                            title: Text("Kullanıcı Adı"),
                            subtitle: Text("eotacioglu14"),
                            trailing: Icon(
                              Icons.edit,
                              size: 20,
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        GestureDetector(
                          onTap: (){
                            kadiDuzenle(2);
                          },
                          child: ListTile(
                            title: Text("Şifre"),
                            subtitle: Text("***********"),
                            trailing: Icon(
                              Icons.edit,
                              size: 20,
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        GestureDetector(
                          onTap: (){
                            kadiDuzenle(3);
                          },
                          child: ListTile(
                            title: Text("E-Posta Adresi"),
                            subtitle: Text("eotacioglu@gmail.com"),
                            trailing: Icon(
                              Icons.edit,
                              size: 20,
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        GestureDetector(
                          onTap: (){
                            kadiDuzenle(4);
                          },
                          child: ListTile(
                            title: Text("Telefon Numarası"),
                            subtitle: Text("0545 610 06 14 " + "(Onaylanmadı)"),
                            trailing: Icon(
                              Icons.edit,
                              size: 20,
                            ),
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            elevation: 20,
                            shadowColor: Colors.blueAccent,
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.lightBlue,
                                    Colors.blueAccent,
                                  ]),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      "BilCoin Hesabım",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    trailing: RichText(
                                      text: TextSpan(
                                        style:
                                            DefaultTextStyle.of(context).style,
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '54',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  decoration:
                                                      TextDecoration.none)),
                                          TextSpan(
                                              text: ' Jeton',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  decoration:
                                                      TextDecoration.none)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      CupertinoIcons.archivebox,
                                      color: Colors.white,
                                    ),
                                    title: Text("Jeton Tutarı",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    trailing: Text(
                                      "₺" + "54",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  ListTile(
                                    title: Text("EMRE OTACIOĞLU",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    trailing: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            kartAyarPop();
                                          });
                                        },
                                        child: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        )),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      CupertinoIcons.creditcard,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                        "TR 4347 27** **** 2388 **** ****",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 10,
                        ),
                        ListTile(
                          leading: Icon(Icons.history),
                          title: Text("Geçmiş Taleplerim"),
                          trailing:
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => TumTaleplerPage()),
                                    );
                              },
                                  child: Text("Tümünü göster")),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 4,
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
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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

  void kartAyarPop() {
    Alert(
      context: context,
      type: AlertType.info,
      title: "Hesap İşlemleri",
      desc:
          "Hangi işlemi yapmak istersiniz? (Hesap kartınıza bağlı tüm işlemleri buradan yönetebilirsiniz)",
      closeIcon: Icon(Icons.close_rounded),
      buttons: [
        DialogButton(
          child: Text(
            "Hesap Ekle",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KartHesapEklePage()),
            );
          },
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(0.0),
        ),
        DialogButton(
          child: Text(
            "Hesap Düzenle",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.redAccent,
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();
  }

  void kadiDuzenle(int a) {
    if(a == 1){
      Alert(
          context: context,
          title: "Kullanıcı Adını Düzenle",
          content: Column(
            children: <Widget>[
              TextFormField(
                initialValue: "eotacioglu14",
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",

                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              color: Colors.green,
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Onayla",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ]).show();
    }else if(a == 2){
      Alert(
        context: context,
        title: "Şifre Değiştir",
        desc: "Şifre değiştirmek için kayıtlı olan e-posta adresinize mail bağlantısı gönderin.",
        buttons: [
          DialogButton(
            color: Colors.green,
            child: Text(
              "Gönder",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }else if(a == 3){
      Alert(
          context: context,
          title: "E-Posta Düzenle",
          content: Column(
            children: <Widget>[
              TextFormField(
                initialValue: "eotacioglu14@gmail.com",
                decoration: InputDecoration(
                  labelText: "E-Posta adresi",

                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              color: Colors.green,
              onPressed: () => Navigator.pop(context),
              child: Text(
                "E-Posta Onay Gönder",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ]).show();
    }else if(a==4){
      Alert(
          context: context,
          title: "Telefon Numarası Düzenle",
          content: Column(
            children: <Widget>[
              TextFormField(
                initialValue: "0545 610 06 14",
                decoration: InputDecoration(
                  labelText: "Telefon",
                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              color: Colors.green,
              onPressed: () => Navigator.pop(context),
              child: Text(
                "SMS Onayına Gönder",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ]).show();
    }
  }
}
