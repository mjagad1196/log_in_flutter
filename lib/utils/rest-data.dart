import 'dart:async';
import 'package:log_in_flutter/db/database-helper.dart';
import 'package:log_in_flutter/model/user.dart';

class RestData {

  Future<User> login( String username, String password) async {
    String flagLogged = "logged";
    var user = new User(null, username, password, null);
    var db = new DatabaseHelper();
    var userToReturn = new User(null,null,null,null);
    userToReturn = await db.selectUser(user);
    if(userToReturn != null){
      flagLogged = "logged";
      return new Future.value(new User(null, username, password,flagLogged));
    }else {
      flagLogged = "not";
      return new Future.value(new User(null, username, password,flagLogged));
    }
  }
}
