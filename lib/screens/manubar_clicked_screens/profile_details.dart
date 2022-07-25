import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
    // backgroundColor: Color(0xff2c4cec),
      // appBar: AppBar(
      //   //backgroundColor: Color(0xff2c4cec),
      //   title: Text(
      //     "Profile"
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          height: _size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Stack(
                  alignment: Alignment.topCenter,
                  //overflow: Overflow.visible,
                  children: [
                    Container(
                      width: _size.width,
                      height: _size.height / 2.7,
                      child: Image.asset(
                        'assets/images/profile_back.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      top: 45,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: CircleAvatar(
                              backgroundColor: Color(0xff2C4CEC),
                              radius: 58,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 52,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/images/slider_images/mime_circle.png"), //NetworkImage
                                  radius: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Dev-ops',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'dev-ops@cg-bd.com',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: _size.height / 5 * 2.7,
                        width: _size.width - 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.grey,
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 50),
                            child: Column(
                              children: [
                                buildProfileInfo("Mobile", "01686985487"),
                                buildProfileInfo("Tel", "0123456789"),
                                buildProfileInfo("Address", "Banani, Dhaka"),
                                buildProfileInfo("Postal code", "1234"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: Colors.white,
                        elevation: 4,
                        padding: EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 10,
                        ),
                      ),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 24, color: Colors.black45),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileInfo(String title, value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "$title",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  " :  $value",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
