import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final String image;
  final String text;
  final void Function()? onTap;
  const MainCard({super.key, required this.image, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 7,bottom: 7,),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red,),
              borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Image.asset(image,height: 100,width: 100,),
            Text(text,style: TextStyle(
              fontSize: 10
            ),)
          ],
        ),
      ),
    );
  }
}
