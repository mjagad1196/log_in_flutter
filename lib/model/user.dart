class User {
  String _name;
  String _email;
  String _password;
  String _flaglogged;



  User(this._name, this._email, this._password, this._flaglogged);

  User.map(dynamic obj) {
    this._name = obj['name'];
    this._email = obj['email'];
    this._password = obj['password'];
    this._flaglogged = obj['password'];
  }

  String get name => _name;
  String get email => _email;
  String get password => _password;
  String get flaglogged => _flaglogged;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = _name;
    map["email"] = _email;
    map["password"] = _password;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}
