import 'dart:convert';

import 'dart:io';

import 'package:bilparaapp/Screens/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:bilparaapp/Models/UserModel.dart';

class Api {


  UserModel userModel=new UserModel();
  String baseUrl = "http://212.125.27.172:61014";
  var headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer '
  };

  Future<UserModel> getUrunGrup() async {

   var response= http.get(baseUrl + "/api/user", headers: {

      HttpHeaders.contentTypeHeader: 'application/json'
    }).then((value) {
      if (value.statusCode == 200) {
        var users = new List<UserModel>();
        Iterable list = json.decode(value.body);
        users = list.map((model) => UserModel.fromJson(model)).toList();
        return users;
      }
      return null;
    });
  }

  Future postDeneme(var email,var password) async {

   String em= email.toString();
   String pw= password.toString();
   var response = await http.post(
      baseUrl+'/api/user',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{

        'email': em,
        'password': pw,

      }),

    );

    if (response.statusCode == 201) {


      return UserModel.fromJson(jsonDecode(response.body));

    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }

  }


}