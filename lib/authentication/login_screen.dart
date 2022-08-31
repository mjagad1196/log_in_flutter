import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:log_in_flutter/authentication/signup_screen.dart';
import 'package:log_in_flutter/db/database-helper.dart';
import 'package:log_in_flutter/home/home_screen.dart';
import 'package:log_in_flutter/model/user.dart';
import 'package:log_in_flutter/utils/login_presenter.dart';

class LogInScreen extends StatefulWidget {
   LogInScreen({Key key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> implements LoginPageContract {
   double height;
   BuildContext _ctx;
   final _emailController = TextEditingController();
   final _passwordController = TextEditingController();
   LoginPagePresenter _presenter;

   _LogInScreenState() {
     _presenter = new LoginPagePresenter(this);
   }

  @override
  Widget build(BuildContext context) {

    _ctx = context;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              color: Colors.grey[800],
                              blurRadius: 1
                          )
                        ]
                    ),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 20,),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),)
                  )
                ],
              ),
              SizedBox(height: height/15.0,),
              Text('Log in with one of the following options.',
                style: TextStyle(color: Colors.grey[500], fontSize: 16, fontWeight: FontWeight.normal), textAlign: TextAlign.start,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, right: 10),
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              color: Colors.grey[800]
                            )
                          ]
                        ),
                        child: Image.asset("images/google.png", height: 20, width: 20, color: Colors.white,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  color: Colors.grey[800]
                              )
                            ]
                        ),
                        child: Image.asset("images/apple.png", height: 20, width: 20, color: Colors.white,),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: height/20,),
              Text('Email', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          color: Colors.grey[800]
                      )
                    ]
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                    showCursor: false,
                    onChanged: (_) => setState(() {}),
                    controller: _emailController,
                    style: TextStyle(
                        color: Colors.white
                    ),
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Enter your email",
                        errorText: errorText(_emailController),
                        hintStyle: TextStyle(
                          color: Colors.grey[500]
                        ))
                ),
              ),
              SizedBox(height: height/30,),
              Text('Password', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),),
              Container(
                height: 60,
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          color: Colors.grey[800]
                      )
                    ]
                ),
                child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    showCursor: false,
                    onChanged: (_) => setState(() {}),
                    controller: _passwordController,
                    style: TextStyle(
                        color: Colors.white
                    ),
                    obscureText: true,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                        EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                        hintText: "Enter your password",
                        errorText: errorText(_passwordController),
                        hintStyle: TextStyle(
                            color: Colors.grey[500]
                        ))
                ),
              ),
              InkWell(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple[300],
                          Colors.purpleAccent[200]
                        ]
                      ),
                      borderRadius: BorderRadius.circular(15),

                  ),
                  child: Text(
                      'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                onTap: () {
                  if(validate(_emailController.text.toString(), _passwordController.text.toString())) {
                    _presenter.doLogin(_emailController.text.toString(), _passwordController.text.toString());
                  }
                },
              ),
              SizedBox(height: height/30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5, width: 5,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

   String errorText(TextEditingController _controller) {

     final text = _controller.value.text;

     if (text.isEmpty) {
       return 'Can\'t be empty';
     }

     return null;
   }

   bool validate(String email, String password) {
     if(email.isNotEmpty && password.isNotEmpty) {
       return true;
     }
     return false;
   }

   @override
   void onLoginError(String error) {
      _showToast(context);
   }

   @override
   void onLoginSuccess(User user) async {
     if(user.flaglogged == "logged"){
       print("Logged");
       Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
     }else{
       print("Not Logged");
       _showToast(context);
     }
   }

   void _showToast(BuildContext context) {
     final scaffold = ScaffoldMessenger.of(context);
     scaffold.showSnackBar(
       SnackBar(
         content: const Text('Email or Password is not correct'),
       ),
     );
   }
}
