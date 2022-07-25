import 'package:flutter/material.dart';
class InventoryScreen extends StatelessWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.white,
        child:Center(
          child:Text(
            "Inventory Screen",style: TextStyle(
            fontSize: 25,color: Colors.purple,
          ),
          ),
        ),

      ),
    );
  }
}
