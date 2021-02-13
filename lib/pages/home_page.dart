import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/json_data.dart';
import 'package:tiktok_clone/widgets/bottom_details_panel.dart';
import 'package:tiktok_clone/widgets/header_homepage.dart';
import 'package:tiktok_clone/widgets/icons_widget_homepage.dart';
import 'package:tiktok_clone/widgets/tiktok_icons.dart';

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
                              child: Column(
                                children: [
                                  Container(height: size.height * 0.3),
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        myProfileIcon(items[0]["profileImg"]),
                                        myIcon(TikTokIcons.heart, 35.0,
                                            items[0]["likes"]),
                                        myIcon(TikTokIcons.chat_bubble, 35.0,
                                            items[0]["comments"]),
                                        myIcon(TikTokIcons.share, 35.0,
                                            items[0]["shares"]),
                                        myAlbum(items[0]["albumImg"]),
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
}
