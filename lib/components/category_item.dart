import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color,this.onTap});
  String? text;
  Color? color;
  Function() ?onTap;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap : onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        // Color(0xffEF9235)
        color: color,
        child: Center(
          //'Numbers'
          child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
