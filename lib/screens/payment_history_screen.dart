import 'package:flutter/material.dart';
class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child:Center(
          child:Text(
            "PaymentHistory Screen",style: TextStyle(
            fontSize: 25,color: Colors.white,
          ),
          ),
        ),

      ),
    );
  }
}
