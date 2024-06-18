import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorCardOption extends StatelessWidget {
  Color color;
  String text;
  String image;
   ColorCardOption({super.key, required this.color, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: color),
                color: Colors.white
            ),
            child: Image.network(image),
          ),
           Text(text, style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.w700),)
        ],
      ),
    );
  }
}
