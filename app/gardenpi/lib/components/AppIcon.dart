import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  String title;
  String imageAsset;

  AppIcon({this.title, this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(60.0)),
            ),
            child: Image(
              image: AssetImage(imageAsset),
              width: 96,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.blue
              ),
            ),
          )
        ],
      ),
    );
  }
}