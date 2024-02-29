import 'package:flutter/material.dart';
import 'package:week_8_assignment/constants/image_assets.dart';
import 'package:week_8_assignment/model/user_class.dart';

List<User> users = [
  User(
      email: "Newuser420@gmail.com",
      image: ImageAsset.logo,
      name: "Giorgi Togonidze",
      number: "+995 555 420 069")
];

class UserProvider extends ChangeNotifier {
  List<User> get getUsers => users;
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
