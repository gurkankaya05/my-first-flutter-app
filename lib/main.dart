// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Header Title",
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatelessWidget {
  const AnaEkran({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const GNav(backgroundColor: Colors.white38, tabs: [
        GButton(
          icon: Icons.home,
          iconColor: Colors.black,
          text: "Home",
          textColor: Colors.black,
          iconActiveColor: Colors.black,
        ),
        GButton(
          icon: Icons.favorite_border,
          iconColor: Colors.black,
          text: "Likes",
          textColor: Colors.black,
          iconActiveColor: Colors.black,
        ),
        GButton(
          icon: Icons.search,
          iconColor: Colors.black,
          text: "Ara..",
          textColor: Colors.black,
          iconActiveColor: Colors.black,
        ),
        GButton(
          icon: Icons.settings,
          iconColor: Colors.black,
          text: "Settings",
          textColor: Colors.black,
          iconActiveColor: Colors.black,
        ),
      ]),
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Colors.blue[900],
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 90,
                    left: 0,
                    child: Container(
                      height: 80,
                      width: 260,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),
                    )),
                const Positioned(
                    top: 110,
                    left: 20,
                    child: Text(
                      "First App",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF363f93),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 19,
                  child: Material(
                    child: Container(
                        height: 180.0,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                blurRadius: 20.0,
                                spreadRadius: 4.0,
                              )
                            ])),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 30,
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.grey.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/aph.jpeg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 200,
                  child: Container(
                    height: 150,
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello World!",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold),
                        ),
                        const Text("Gürkan Kaya",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Divider(
                          color: Colors.black,
                        ),
                        Text("Flutter Öğreniyorum.")
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
