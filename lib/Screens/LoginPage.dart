
import 'package:bilparaapp/Helpers/Api.dart';
import 'package:bilparaapp/Screens/Anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import 'NavController.dart';

const users = const {
  'emre': '1',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {



  Api api=new Api();

  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {

    print('Name: ${data.name}, Password: ${data.password}');
   api.postDeneme(data.name,data.password);
    return Future.delayed(loginTime).then((_) {

      if (!users.containsKey(data.name)) {
        return 'Kullanıcı bulunamadı';
      }
      if (users[data.name] != data.password) {
        return 'Şifreler eşleşmiyor.';
      }

      return null;
    });
  }
  Future<String> _createUser(LoginData data) {

    print('Name: ${data.name}, Password: ${data.password}');
    api.postDeneme(data.name,data.password);
    print("------------");

    print("-------------");

    return Future.delayed(loginTime).then((_) {

      // ignore: unrelated_type_equality_checks


      return null;


    });

  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Kullanıcı bulunamadı';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(

      emailValidator: (vale){
if(vale.isEmpty){
  return "Geçerli bir E-Posta adresi girinz.";
}
return null;

      },

      passwordValidator: (value){
        if(value.isEmpty){
          return "Şifre alanı boş geçilemez.";
        }
        return null;

      },

      messages: LoginMessages(
        usernameHint: "E-Posta",
        passwordHint: "Şifre",
        confirmPasswordHint: "Şifre Tekrar",
        forgotPasswordButton: "Şifreni mi unuttun ?",
          loginButton: "Giriş Yap",
        signupButton: "Kayıt Ol",
        confirmPasswordError: "Şifreler Uyuşmuyor !",
        goBackButton: "Geri",
        recoverPasswordButton: "Gönder",
        recoverPasswordDescription: "Kayıtlı olan E-Posta adresinizi giriniz ve Gönder butonuna tıklayınız. ",
        recoverPasswordIntro: "Şifrenizi sıfırlayın",
        recoverPasswordSuccess: "Şifre sıfırlama bağlantısı E-Posta adresinize gönderilmiştir."



      ),
      title: 'GİRİŞ',
      logo: 'lib/Assets/logo.png',
      onLogin: _authUser,
      onSignup: _createUser,
      onSubmitAnimationCompleted: () {

        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Example(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
