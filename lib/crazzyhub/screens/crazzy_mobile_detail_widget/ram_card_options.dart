import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RamCardOption extends StatelessWidget {
  Color color;
  String text;
  void Function()? onTap;
  RamCardOption({super.key, required this.color, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 90,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 80,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                border: Border.all(color: color),
                color: Colors.white
            ),
            child: Center(child: TextButton(onPressed: onTap,child: Text(text, style: TextStyle(color: color, fontWeight: FontWeight.w700),))),
          ),
        ],
      ),
    );
  }
}
