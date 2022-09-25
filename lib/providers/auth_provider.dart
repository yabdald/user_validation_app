import 'package:flutter/cupertino.dart';

enum Status {
  notLoggedIn,
  notRegistered,
  loggedIn,
  registerd,
  authenticating,
  loggedout,
}

class AuthProvider extends ChangeNotifier {}
