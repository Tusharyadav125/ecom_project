
import 'dart:async';

import 'package:ecom/Screens/login%20and%20sign%20up/Login_screen.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
         child: Center(

          child:
          Image.asset(
              'assets/images/bg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,)
       //    Text("ECOM",style: TextStyle(
      //       color: Colors.white,fontWeight: FontWeight.bold,
      // ),),
        ),
     ),
   );
  }
}
