import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/json_data.dart';
import 'package:tiktok_clone/widgets/bottom_details_panel.dart';
import 'package:tiktok_clone/widgets/header_homepage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 25, left: 10, right: 10, bottom: 10),
                child: Column(
                  children: [
                    HeaderHomePage(),
                    Flexible(
                      child: Row(
                        children: [
                          SizedBox(height: 100),
                          BottomDetailsPanel(size: size),
                          Expanded(
                            child: Container(
                              height: size.height,
                              // decoration: BoxDecoration(
                              //   color: Colors.yellow,

                              // ),
                              child: Column(
                                children: [
                                  Container(height: size.height * 0.3),
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                    ),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            myProfile(),
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget myProfile() {
    return Container(
      width: 55,
      height: 55,
      child: Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(items[0]["profileImg"]),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
