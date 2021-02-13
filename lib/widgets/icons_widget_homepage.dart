import 'package:flutter/material.dart';

Widget myProfileIcon(profileImg) {
  return Center(
    child: Container(
      width: 55,
      height: 55,
      child: Stack(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(profileImg), fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 0,
            left: 15,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink,
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget myIcon(icon, size, count) {
  return Column(
    children: [
      Icon(
        icon,
        color: Colors.white,
        size: size,
      ),
      SizedBox(height: 5),
      Text(
        count,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget myAlbum(albumImg) {
  return Container(
    width: 55,
    height: 55,
    child: Stack(
      children: [
        Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[700],
            ),
          ),
        ),
        Center(
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(albumImg), fit: BoxFit.cover)),
          ),
        ),
      ],
    ),
  );
}
