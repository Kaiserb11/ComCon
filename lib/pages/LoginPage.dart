import 'package:flutter/material.dart';
import 'package:ComCon/pages/SignupPage.dart';





class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF9F9F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/login.png"),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Text(
                    "Hello there, \nwelcome back",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xffEF716B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  hintText: 'email',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                  )
                ),
              ),
              SizedBox(height:15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 18),
                  hintText: 'password',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                  )
                ),
                obscureText: true,
              ),
              SizedBox(height: 15,),
              Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.only(top: 25, left: 20),
                child: InkWell(
                  child: Text(
                    "FORGOT PASSWORD",
                    style: TextStyle(
                      color: Color(0xffEF716B),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Color(0xffEF716B),
                        color: Color(0xffEF716B),
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      },
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "new to our app ?",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 20, ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                      },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffEF716B),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        
                      ),
                    )
                  )
              ],
              )     
            ],
            ),
          )
              ],
            ),
          )
        ],
      ),
    );
  }
}