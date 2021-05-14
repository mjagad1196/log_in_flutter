import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key key}) : super(key: key);
  double height;

  @override
  Widget build(BuildContext context) {

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
              SizedBox(height: 50),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
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
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),)
                  )
                ],
              ),
              SizedBox(height: height/15.0,),
              Text('Sign up with one of the following options.',
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
              SizedBox(height: height/20.0,),
              Text('Name', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal),),
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
                    keyboardType: TextInputType.name,
                    showCursor: false,
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
                        hintText: "Enter your name",
                        hintStyle: TextStyle(
                            color: Colors.grey[500]
                        ))
                ),
              ),
              SizedBox(height: height/30.0,),
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
                        hintStyle: TextStyle(
                            color: Colors.grey[500]
                        ))
                ),
              ),
              SizedBox(height: height/30.0,),
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
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                            color: Colors.grey[500]
                        ))
                ),
              ),
              Container(
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
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: height/40.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5, width: 5,),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Log in',
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
}
