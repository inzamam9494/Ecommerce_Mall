import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.red,size: 25,),
          Text("Search your desire item or store",style: TextStyle(
            color: Colors.grey
          ),)
        ],
      ),
    );
  }
}
