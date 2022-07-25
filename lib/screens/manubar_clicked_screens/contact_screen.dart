import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF56ccf2),
      appBar: AppBar(
        title: Text("Contact Us"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 50,right: 15,left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        MaterialButton(
          elevation: 10,
          splashColor: Colors.green,
          child: Row(
            children: [
              Icon(
                Icons.phone,
              ),
              SizedBox(
                width: 10,
              ),
              Text('16676', style: TextStyle(fontSize: 20)),
            ],
          ),
          onPressed: () {},
        ),
        MaterialButton(
          child: Row(
            children: [
              Icon(
                Icons.phone,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '+8809609006463',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          onPressed: () {},
        ),
        MaterialButton(
          child: Row(
            children: [
              Icon(
                Icons.email,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                " info.mime@cg-bd.com",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          onPressed: () {},
        ),

        Row(
          children: [
            SizedBox(width: 15,),
            Icon(
              Icons.navigation,
            ),
            SizedBox(
              width: 10,
            ),
            //Awal Center, 34,Kemal Ataturk Avenue, Banani C/A, Dhaka-1213
            Flexible(
              child: Text(
                "15th Floor, Awal Center, 34,Kemal Ataturk Avenue, Banani C/A, Dhaka-1213",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}
