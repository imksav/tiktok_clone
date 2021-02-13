import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/json_data.dart';

class BottomDetailsPanel extends StatelessWidget {
  const BottomDetailsPanel({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              items[0]["name"],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              items[0]["caption"],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
            Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: Colors.white,
                ),
                Text(
                  items[0]["songName"],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
