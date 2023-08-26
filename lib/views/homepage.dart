// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:inventory/views/reports.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.event_add,
          children: [SpeedDialChild(child: Icon(Icons.add), label: "abc")],
        ),
        appBar: AppBar(
          title: Text(
            "Inventory",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 7, 143, 255),
          elevation: 5,
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: _openDrawer,
          ),
        ),
        drawer: Drawer(),
        body: Stack(
          children: [
            Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 13, 240, 232),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/addnew.png",
                        width: 110,
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 10),
                        child: Text(
                          "Entry",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            InkWell(
              splashColor: Colors.grey,
              child: Container(
                  height: 330,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 255, 191, 0),
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    color: const Color.fromARGB(255, 255, 191, 0),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(80.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30, left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/reports.png",
                          width: 100,
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20, left: 10),
                          child: Text(
                            "Reports",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                textBaseline: TextBaseline.alphabetic),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 7, 143, 255),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  color: const Color.fromARGB(255, 7, 143, 255),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/products.png",
                        width: 100,
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Products",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
