import 'package:flutter/material.dart';
import 'package:tiktok_clone/pages/home_page.dart';
import 'package:tiktok_clone/widgets/tiktok_icons.dart';
import 'package:tiktok_clone/widgets/upload_icons.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myFooter(),
      body: myBody(),
    );
  }

  Widget myBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        Center(
          child: Text(
            "Discover",
            style: TextStyle(color: Colors.blue, fontSize: 50),
          ),
        ),
        Center(
          child: Text(
            "Upload",
            style: TextStyle(color: Colors.blue, fontSize: 50),
          ),
        ),
        Center(
          child: Text(
            "All Activity\n     &     \nMessages",
            style: TextStyle(color: Colors.blue, fontSize: 50),
          ),
        ),
        Center(
          child: Text(
            "My Profile",
            style: TextStyle(color: Colors.blue, fontSize: 50),
          ),
        ),
      ],
    );
  }

  Widget myFooter() {
    var size = MediaQuery.of(context).size;
    List bottomItems = [
      {
        "icon": TikTokIcons.home,
        "label": "Home",
        "isIcon": true,
        "isPressed": true,
      },
      {
        "icon": TikTokIcons.search,
        "label": "Discover",
        "isIcon": true,
        "isPressed": false,
      },
      {
        "icon": "",
        "label": "",
        "isIcon": false,
        "isPressed": false,
      },
      {
        "icon": TikTokIcons.messages,
        "label": "Inbox",
        "isIcon": true,
        "isPressed": false,
      },
      {
        "icon": TikTokIcons.profile,
        "label": "Me",
        "isIcon": true,
        "isPressed": false,
      },
    ];
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        // color: appBgColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            5,
            (index) {
              return bottomItems[index]["isIcon"]
                  ? InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomePage()));
                        selectedIndex(index);
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 2),
                          Icon(bottomItems[index]["icon"], color: Colors.white),
                          SizedBox(height: 2),
                          Text(bottomItems[index]["label"],
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        selectedIndex(index);
                      },
                      child: Center(child: UploadIcon()));
            },
          ),
        ),
      ),
    );
  }

  selectedIndex(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
