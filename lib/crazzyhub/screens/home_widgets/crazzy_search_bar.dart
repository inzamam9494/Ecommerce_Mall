import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrazzySearchBar extends StatelessWidget {
  const CrazzySearchBar({super.key});

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
          Text("Search for Products, Brand,",style: TextStyle(
              color: Colors.grey
          ),)
        ],
      ),
    );
  }
}
