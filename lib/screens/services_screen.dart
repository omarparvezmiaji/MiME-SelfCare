import 'package:flutter/material.dart';

import 'inventory_screen.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Services"),
            centerTitle: true,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {},
            // ),
            // actions: [
            //   IconButton(
            //     icon: Icon(Icons.notifications_none),
            //     onPressed: () {},
            //   ),
            //   IconButton(
            //     icon: Icon(Icons.search),
            //     onPressed: () {},
            //   )
            // ],

            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [

                Tab(icon: Icon(Icons.home), text: 'ISP',),
                Tab(icon: Icon(Icons.tv), text: 'IPTSP'),
                Tab(icon: Icon(Icons.face), text: 'IPTV'),
                Tab(icon: Icon(Icons.settings), text: 'Bundle'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              buildPage('Home '),
              buildPage('Feed Page'),
             // InventoryScreen(),
              buildScreen(),
              buildPage('Settings Page'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
  Widget buildScreen() => Center(
    // child: Text(
    //   text,
    //   style: TextStyle(fontSize: 28),
    // ),
    child: Container(
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
