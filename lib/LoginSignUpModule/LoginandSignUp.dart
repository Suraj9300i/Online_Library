import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'LoginPopUpBox.dart';
import 'SignUpPopUpBox.dart';

class LoginandSignup extends StatefulWidget {
  @override
  _LoginandSignupState createState() => _LoginandSignupState();
}

class _LoginandSignupState extends State<LoginandSignup> {
  @override
  Widget build(BuildContext context) {


    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    var _onPressLogin = true;
    var _onPressSignup = false;

    _onPressLoginMethod(){
      setState(() {
        _onPressLogin = true;
        _onPressSignup = false;
      });
    };

    _onPressSignupMethod(){
      setState(() {
        _onPressLogin = false;
        _onPressSignup = true;
      });
    };

    return Stack(
      children: <Widget>[
        //Taking Control of Screen
        Container(
          height: screenHeight,
          width: screenWidth,
        ),

        //LoginBOx
        Container(
          height: screenHeight*0.25,
          width: double.infinity,
          child: Center(
            child: Text("LOGO",style: TextStyle(
              fontSize: 50.0,
            ),),
          ),
        ),

        //Login Container
        Positioned(
          top:screenHeight*0.22,
          bottom: screenHeight*0.1,
          left: -(screenWidth*0.15),
          child: Container(
            height: screenHeight*0.65,
            width: screenWidth*0.65,
            decoration: _onPressLogin ? ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color:Colors.red,
            ) : null ,
            child: Padding(
              padding: EdgeInsets.only(left: 80,top: 40),
              child: InkWell(
                onTap:() {_onPressLoginMethod();},
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    color: _onPressLogin ? Colors.white : Colors.grey,
                  ),),
              ),
            ),
          ),
        ),


        //SignUpContainer
        Positioned(
          top:screenHeight*0.22,
          bottom: screenHeight*0.1,
          right: -(screenWidth*0.15),
          child: Container(
            height: screenHeight*0.65,
            width: screenWidth*0.65,
            decoration: _onPressSignup ? ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: Colors.red,
            ): null,
            child: Padding(
              padding: EdgeInsets.only(left: 40,top: 40),
              child: InkWell(
                onTap:(){_onPressSignupMethod();},
                child: Text("Sign up",style: TextStyle(
                  fontSize: 30,
                  color: _onPressSignup ? Colors.white : Colors.grey,
                ),),
              ),
            ),
          ),
        ),


        //LOGIN POPUP BOX
        Positioned(
          top: screenHeight*0.35,
          left: screenWidth*0.05,
          child: _onPressLogin ? LoginPopUpBox() : SignupPopupBox(),
        ),


        //Don't Have an account
        _onPressLogin ? Positioned(
          bottom: screenHeight*0.005,
          child: Container(
            height: screenHeight*0.1,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?",style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                ),),
                Text("SIGN UP",style: TextStyle(
                    fontSize: 18,
                    color: Colors.red
                ),)
              ],
            ),
          ),
        ) : SizedBox(),
      ],
    );
  }
}
