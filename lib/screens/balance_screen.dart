import 'package:flutter/material.dart';
class BalanceScreen extends StatelessWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child:Center(
          child:Text(
            "Balance Screen",style: TextStyle(
            fontSize: 25,color: Colors.white,
          ),
          ),
        ),

      ),
    );
  }
}
