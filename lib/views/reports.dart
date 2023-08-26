import 'package:flutter/material.dart';

/// Flutter code sample for [Scaffold.drawer].

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 7, 143, 255),
            ),
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              height: 300,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Container(
                color: Colors.transparent,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 241, 239, 231),
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 2.0,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Container(
                        color: Colors.white,
                        height: 90,
                        width: 70,
                      ),
                    ),
                    Container(
                        height: 100,
                        width: 80,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 241, 239, 231),
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 2.0,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Container(
                          color: Colors.white,
                          height: 90,
                          width: 70,
                        )),
                    Container(
                        height: 100,
                        width: 80,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 241, 239, 231),
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 2.0,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Container(
                          color: Colors.white,
                          height: 90,
                          width: 70,
                        )),
                    Container(
                        height: 100,
                        width: 80,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 241, 239, 231),
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 2.0,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Container(
                          child: Center(
                            child: Text("sales"),
                          ),
                          height: 90,
                          width: 70,
                        )),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
