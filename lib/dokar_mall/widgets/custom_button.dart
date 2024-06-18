import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;
  final String text;
  const CustomButton({super.key, required this.color, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color)),
        child: Text(text,style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),));
  }
}
