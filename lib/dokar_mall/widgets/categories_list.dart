import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: Stack(
        children: [
          Container(
            height: 80,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset("images/Beauty.jpg",
            fit: BoxFit.fill,),
          ),
          Container(
            height: 10,
            color: Colors.teal.shade200,
            child: const Text("Beauty",
            style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
