import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child:  Row(
        children: [
          const Icon(Icons.widgets_rounded,),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Others", style: TextStyle(
                  fontWeight: FontWeight.w500
                ),),
                Text("W7P2+9H4, Beldanga, West Bengal 742133, india", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10
                ),)
              ],
            ),
          ),
          const Spacer(),
          const Icon(Icons.notifications_none, size: 25,)
        ],
      ),
    );
  }
}
