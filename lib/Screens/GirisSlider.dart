import 'package:bilparaapp/Screens/Anasayfa.dart';
import 'package:bilparaapp/Screens/LoginPage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GirisPage extends StatefulWidget {
  @override
  _GirisPageState createState() => _GirisPageState();
}

class _GirisPageState extends State<GirisPage> {
  @override
  Widget build(BuildContext context) {
    final imageList = [
      'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
      'https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__480.jpg',
      'https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183__480.jpg',
      'https://cdn.pixabay.com/photo/2017/02/03/03/54/burger-2034433__480.jpg',
    ];
    final TextList = [
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
    ];

    return new Scaffold(
        body: new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: CachedNetworkImage(
                  imageUrl: imageList[index],
                  imageBuilder: (context, imageProvider) => Container(
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Center(
                        child: Text(
                          "BAŞLIK",
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        )),
                  ),
                  Center(
                      child: Text(
                    TextList[index],
                    style: TextStyle(fontSize: 15),
                  )),

                ],
              ),
            ),
            index == 3
                ? Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 30),
                    child: Container(
                      child: Row(
                        children: [
                          Spacer(),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text("Geç"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 30),
                    child: Container(),
                  ),
          ],
        );
      },

      autoplay: false,
          loop: false,
      itemCount: imageList.length,
      pagination: new SwiperPagination(
        builder: DotSwiperPaginationBuilder(
            color: Colors.grey, activeColor: Colors.amber),
        margin: EdgeInsets.all(50),
      ),
      // control: new SwiperControl(),
    ));
  }
}
