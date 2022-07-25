import 'package:flutter/material.dart';
import 'package:mime_selfcare/screens/manubar_clicked_screens/profile_details.dart';
//import 'package:mime_self_care/screens/profile_details.dart';

import 'home_screen.dart';
import 'login_screen.dart';
import 'manubar_clicked_screens/change_password.dart';
import 'manubar_clicked_screens/contact_screen.dart';
import 'manubar_clicked_screens/faq_screen.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    elevation: 15,
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            "Dev-ops",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          accountEmail: Text("dev-ops@cg-bd.com"),
          currentAccountPicture: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileDetails(),
                ),
              );
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 32,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/slider_images/mime_circle.png",
                ), //NetworkImage
                radius: 32,
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileDetails(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.lock_open),
          title: Text("Change Password"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChangePasswordScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.question_answer_outlined),
          title: Text("FAQ"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FaqScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_phone),
          title: Text("Contact Us"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContactScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
        ),
      ],
    ),
  );
}
