import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.black,

      body: Container(
        height: _size.height,
        width: _size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                Image.asset(
                  "assets/images/front.png",
                  height: _size.height,
                  width: _size.width,
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          //hintText: "Enter your id",
                          labelText: "MiME id",
                          labelStyle: new TextStyle(
                            color: Color(0xffd88fa3),
                            fontSize: 20,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          // hintText: "Enter your password",
                          labelText: "Password",
                          labelStyle: new TextStyle(
                            color: Color(0xffd88fa3),
                            fontSize: 20,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _size.height / 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        primary: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 25, color: Colors.black45),
                      ),
                    ),
                    SizedBox(
                      height: _size.height / 50,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
