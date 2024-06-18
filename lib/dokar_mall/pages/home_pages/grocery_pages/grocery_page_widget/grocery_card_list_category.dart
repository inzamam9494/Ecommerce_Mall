import 'package:flutter/material.dart';

class GroceryCardListCategory extends StatelessWidget {
  final String image;
  final String text;
  const GroceryCardListCategory({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(image,height: 100,width: 100,),
          Text(text)
        ],
      ),
    );
  }
}
