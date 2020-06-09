import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'WeekPromoModule.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<weekPromoModule> weekData = [
    weekPromoModule(
        title: "Iphone",
        imageLoc: "assets/iphone.webp",
        upColor: Colors.green,
        downColor: Colors.greenAccent),
    weekPromoModule(
        title: "Iphone",
        imageLoc: "assets/images/iphone.webp",
        upColor: Colors.green,
        downColor: Colors.greenAccent),
    weekPromoModule(
        title: "Iphone",
        imageLoc: "assets/images/iphone.webp",
        upColor: Colors.green,
        downColor: Colors.greenAccent),
    weekPromoModule(
        title: "Iphone",
        imageLoc: "assets/images/iphone.webp",
        upColor: Colors.green,
        downColor: Colors.greenAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          height: 75,
          width: double.infinity,
          color: Colors.blueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: 230,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)),
                      color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        hintText: "Search here"),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.message),
                iconSize: 30,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 420,
          child: SingleChildScrollView(
            //Body Of HomePage which is scrollable
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                //Lateset Book Column(REPLACE IMAGE WITH LIST OF LATEST BOOK)
                Container(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset("assets/images/Hii.png"),
                ),
                SizedBox(
                  height: 10.0,
                ),

                //WEEK PROMOTION ROW
                Container(
                    height: 165,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Week Promotion",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 130,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: weekData.length,
                                itemBuilder: (context, i) {
                                  return Card(
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.greenAccent,
                                                Colors.green
                                              ])),
                                      //child: Image.asset("assets/iphoneBackground.png"),
                                    ),
                                  );
                                }),
                          ),
                        ), // 1ST weekPromotion Finished here
                      ],
                    )), //1St part Finished

                //2nd part
                Container(
                    height: 165,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Previously Viewed Book",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 130,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: weekData.length,
                                itemBuilder: (context, i) {
                                  return Card(
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.greenAccent,
                                                Colors.green
                                              ])),
                                      //child: Image.asset("assets/iphoneBackground.png"),
                                    ),
                                  );
                                }),
                          ),
                        ), // 2nd weekPromotion Finished here
                      ],
                    )), //2nd part Finished

                //3rd part
                Container(
                    height: 165,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Recommended for You",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 130,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: weekData.length,
                                itemBuilder: (context, i) {
                                  return Card(
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.greenAccent,
                                                Colors.green
                                              ])),
                                      //child: Image.asset("assets/iphoneBackground.png"),
                                    ),
                                  );
                                }),
                          ),
                        ), // 3rd weekPromotion Finished here
                      ],
                    )), //3rd part Finished

                //4th part
                Container(
                    height: 165,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Videos For Famous One",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 130,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: weekData.length,
                                itemBuilder: (context, i) {
                                  return Card(
                                    child: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.greenAccent,
                                                Colors.green
                                              ])),
                                      //child: Image.asset("assets/iphoneBackground.png"),
                                    ),
                                  );
                                }),
                          ),
                        ), // 4th weekPromotion Finished here
                      ],
                    )), //4th part Finished
              ],
            ),
          ),
        ),
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 33.0,
          ),
          Icon(Icons.shop, size: 33.0),
          Icon(Icons.shopping_cart, size: 33.0),
          Icon(Icons.person, size: 33.0),
        ],
        color: Colors.blueAccent,
      ),
    );
  }
}
