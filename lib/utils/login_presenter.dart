import 'package:log_in_flutter/model/user.dart';
import 'package:log_in_flutter/utils/rest-data.dart';

abstract class LoginPageContract{
  void onLoginSuccess(User user);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

  doLogin(String email, String password){
    api
    .login(email, password)
    .then((user) => _view.onLoginSuccess(user))
    .catchError((onError) => _view.onLoginError(onError));
  }
}