import 'package:flutter/material.dart';

class GroceryStoreCard extends StatelessWidget {
  const GroceryStoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Card(
            child: Column(
              children: [
                Container(
                  child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),child: Image.asset("images/maa_durga_store.jpg")),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("MAA DURGA STORE", style: TextStyle(fontWeight: FontWeight.w700)),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Colors.red,),
                          Text(" KOLKATA", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.timer,color: Colors.red,),
                          Text(" 30-60 min", style: TextStyle(color: Colors.grey),)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
           Positioned(
             right: 10,
             bottom: 75,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
            child: const Row(
              children: [
                Icon(Icons.star, color: Colors.red, size: 15,),
                Text(" 0.0"),
                Text(" (0)",style: TextStyle(color: Colors.grey)),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
