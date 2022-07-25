import 'package:flutter/material.dart';
class LogOutScreen extends StatelessWidget {
  const LogOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.pink,
        child:Center(
          child:Text(
            "LogOut Screen",style: TextStyle(
            fontSize: 25,color: Colors.white,
          ),
          ),
        ),

      ),
    );
  }
}
