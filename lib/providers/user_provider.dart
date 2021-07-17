import 'package:client_flutter/models/user_model.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  UserModel _user = UserModel();

  UserModel get user {
    return _user;
  }

  void updateUserInfo() {
    _user.username = 'asd';
    _user.id = "Toncho";
    notifyListeners();
  }
}