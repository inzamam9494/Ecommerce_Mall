import 'package:flutter/material.dart';

class MenuText extends StatelessWidget {
  final String text;
  const MenuText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20),
          child: Text(text,
          style: const TextStyle(
            color: Colors.pink,
          ),),
        ),
      ],
    );
  }
}
