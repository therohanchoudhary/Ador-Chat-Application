import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailEntered;
  String passwordEntered;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/logo1.png'),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 38.0, right: 38.0),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: 'E-mail id'),
                    onChanged: (text) {
                      emailEntered = text;
                    }),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 38.0, right: 38.0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(hintText: 'Password'),
                  onChanged: (text) {
                    passwordEntered = text;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              BottomNavigationBarPage(),
                        ),
                      );
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 120,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        side: BorderSide(color: Colors.red),
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.red,
                      child: Text(
                        "Connect",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    height: 55,
                    width: 120,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        side: BorderSide(color: Colors.blue),
                      ),
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.blue,
                      child: Text(
                        "Connect",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
