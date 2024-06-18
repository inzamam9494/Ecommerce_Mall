import 'package:flutter/material.dart';

class MenuBoxFeature extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  const MenuBoxFeature({super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Icon(icon),
                ),
                Text(text)
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 10,right: 10),child: Divider(color: Colors.grey,))
          ],
        )
      ),
    );
  }
}
