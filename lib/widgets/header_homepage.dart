import 'package:flutter/material.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Following",
            style:
                TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 20),
          ),
          SizedBox(width: 5),
          Text(
            "|",
            style:
                TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 20),
          ),
          SizedBox(width: 5),
          Text(
            "For You",
            style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
