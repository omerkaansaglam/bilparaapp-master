import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    this.id,
    this.userName,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.imageUrl,
    this.isActive,
    this.wallet,
  });

  int id;
  String userName;
  String name;
  String email;
  String password;
  String phone;
  String imageUrl;
  bool isActive;
  int wallet;



  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    userName: json["userName"] == null ? null : json["userName"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    phone: json["phone"],
    imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
    isActive: json["isActive"],
    wallet: json["wallet"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userName": userName == null ? null : userName,
    "name": name,
    "email": email,
    "password": password,
    "phone": phone,
    "imageUrl": imageUrl == null ? null : imageUrl,
    "isActive": isActive,
    "wallet": wallet,
  };
}
