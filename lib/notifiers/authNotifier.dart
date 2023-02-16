import 'package:e_com/models/user.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthNotifier extends ChangeNotifier {
  late User _user;

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  // Test
  late Users _userDetails;

  Users get userDetails => _userDetails;

  setUserDetails(Users user) {
    _userDetails = user;
    notifyListeners();
  }
}
