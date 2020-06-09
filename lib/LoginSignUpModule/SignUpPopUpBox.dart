import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPopupBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Container(
          height: screenHeight*0.6,
          width: screenWidth*0.9,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.white,
            shadows: [
              new BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  spreadRadius: 3.0
              )
            ],
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25,right: 25,top: 25),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            hintText: "User Name",
                            suffixIcon: Icon(Icons.person),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            suffixIcon: Icon(Icons.email),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: Icon(Icons.vpn_key),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Confirm Password",
                            suffixIcon: Icon(Icons.vpn_key),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                        ),
                        SizedBox(height: 20,),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            child: Text("Forgot Password?",style: TextStyle(
                              fontSize: 15.0,
                            ),),
                            onTap: (){},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //CurvedDesign
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                child: Container(
                  height:screenHeight*0.08,
                  width: double.infinity,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),

        //TRAINGLE
        Positioned(
          left: screenWidth*0.65,
          top: -(screenHeight*0.05),
          child: ClipPath(
            clipper: Traingle(),
            child: Container(
              height: screenHeight*0.075,
              width: screenWidth*0.15,
              color: Colors.white,
            ),
          ),
        ),

        //BUTTON
        Positioned(
          left: screenWidth*0.3,
          bottom: -(screenHeight*0.025),
          child: Container(
            height: screenHeight*0.06,
            width: screenWidth*0.28,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.yellow
            ),
            child: Center(
              child: FlatButton(
                child: Text("Sign up",style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                ),),
                onPressed: (){},
              ),
            ),
          ),
        )
      ],
      overflow: Overflow.visible,
    );
  }
}

class Traingle extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var path = new Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width*0.5, 0);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
