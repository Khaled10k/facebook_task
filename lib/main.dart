// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:facebook_assignment/screens/home_screen.dart';
import 'package:facebook_assignment/screens/login_screen.dart';
import 'package:facebook_assignment/screens/splash_screen.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(MyAPP());
}


class MyAPP extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:"login" ,
      routes:{
        "splash":(context) => SplashScreen(),
        "login":(context) => LoginScreen(),
        "home":(context) => HomeScreen()

      },
    );
  }
}