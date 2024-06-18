import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grocery_card.dart';

class GroceryCardBackground extends StatelessWidget {
  const GroceryCardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    // for grocery grey background
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 16),
      height: 300,
      width: double.maxFinite,
      color: Colors.grey.shade200,
      child: Container(
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Special Offer", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),),
                      Icon(Icons.discount_outlined, color: Colors.green,)
                    ],
                  ),
                  Text("See All", style: TextStyle(color: Colors.red),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GroceryCard(),
                  GroceryCard(),
                  GroceryCard(),
                  GroceryCard(),
                  GroceryCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
