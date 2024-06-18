import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FashionPopularStoreCard extends StatelessWidget {
  const FashionPopularStoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: const BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),child: Image.asset(height: 200,"images/Grocery.jpg")),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                      child: Image.asset(height: 50,width: 50,"images/mama_earth.jpg")),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rajantika Jewellers", style: TextStyle(fontWeight: FontWeight.w700),),
                    Text("Kolkata",style: TextStyle(color: Colors.grey),),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red,),
                        Text("0.0"),
                        Text(" (0)", style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 5),
                        Text("0 items", style: TextStyle(color: Colors.red),)
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
