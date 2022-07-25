import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mime_selfcare/screens/payment_history_screen.dart';
import 'package:mime_selfcare/screens/manubar_clicked_screens/profile_details.dart';
import 'package:mime_selfcare/screens/services_screen.dart';
import 'package:mime_selfcare/screens/slider_image.dart';
import 'balance_screen.dart';
import 'complaint_screen.dart';
import 'drawer.dart';
import 'inventory_screen.dart';
import 'make_payment_screen.dart';
import 'manubar_clicked_screens/faq_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: Color(0xff00695A),
        //Color(0xff00695A),

        drawer: buildDrawer(context),
        body: Container(
          height: _size.height,
          width: _size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                //appBar section
                flex: 4,
                child: Container(
                  color: Color(0xff00695A),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileDetails(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            //backgroundColor: Color(0xff00695A),
                            backgroundColor: Colors.white60,

                            radius: 38,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 32,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/slider_images/mime_circle.png",
                                ), //NetworkImage
                                radius: 30,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, right: 65, bottom: 10),
                          child: Column(
                            children: [
                              Text(
                                'Hello! Dev_Ops',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '    Good Morning',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          iconSize: 48,
                          color: Colors.white,
                          onPressed: () {
                            _key.currentState!.openDrawer();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                // ========> sliderImages section <==========
                flex: 8,
                child:
                    // Container(
                    //   color: Colors.white60,
                    //
                    //
                    //   child: SliderImage(),
                    // ),
                    Container(
                  //color: Colors.white60,
                  width: _size.width,

                  child: SliderImage(),
                ),
              ),
              Expanded(
                // allCategories section
                flex: 16,
                child: Container(
                  color: Color(0xff919191),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BalanceScreen()),
                                  );
                                },
                                child: buildContainer(
                                    'Balance', "\$ 999", "taka_logo.png"),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FaqScreen()),
                                  );
                                },
                                child: buildContainer(
                                    'Make Payment', "", "pay.png"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ServiceScreen()),
                                  );
                                },
                                child: buildContainer(
                                    'Services', "", "service.jpg"),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InventoryScreen()),
                                  );
                                },
                                child: buildContainer(
                                    'Inventory', "", "inventory.png"),
                              ),
                            ),
                            // 'Inventory', "", "inventory.png"
                          ],
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PaymentHistoryScreen()),
                                  );
                                },
                                child: buildContainer('Payment History', "",
                                    "payment_history.png"),
                              ),
                            ),

                            SizedBox(
                              width: 1,
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ComplaintScreen()),
                                  );
                                },
                                child: buildContainer(
                                    'Complaint', " ", "complaint.png"),
                              ),
                            ),
                            //
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xff00695A),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String title, text, image) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "$title",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/$image",
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: Text(
                  '$text',
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
