import 'package:flutter/material.dart';
import 'LoginSignUpModule/LoginandSignUp.dart';
void main() => runApp(
  MaterialApp(
   debugShowCheckedModeBanner: false,
   home: MyApp(),
  )
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: LoginandSignup(),
    );
  }
}