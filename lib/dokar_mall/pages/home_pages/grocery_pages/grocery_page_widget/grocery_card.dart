import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroceryCard extends StatefulWidget {
   const GroceryCard({super.key});

  @override
  State<GroceryCard> createState() => _GroceryCardState();
}

class _GroceryCardState extends State<GroceryCard> {
   var isVisible = false;
   var count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.only(bottom: 10),
      height: 220,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              // for grocery card images
              Container(
                height: 100,
                child: Center(child: Image.asset("images/mama_earth.jpg")),
              ),
            //   for grocery card price list
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mama Earth Face Wash", style: TextStyle(
                        fontWeight: FontWeight.w500
                    )),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red, size: 15,),
                        Text(" 0.0"),
                        Text(" (0)",style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Text("(Gm)",style: TextStyle(color: Colors.grey)),
                    Text("(₹ 390)",style: TextStyle( decoration: TextDecoration.lineThrough,color: Colors.grey)),
                    Text("₹ 328", style: TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // for discount off
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding:  const EdgeInsets.only(left: 4, right: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.shade300,
                    ),
                    child: const Text("16.0% OFF",style: TextStyle(color: Colors.white, fontSize: 10)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_rounded, color: Colors.grey,size: 16,),
                  )
                ],
              )),

          // for Organic text
          Positioned(
            top: 30,
            child: Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.only(left: 4, right: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: const Text("ORGANIC",style: TextStyle(color: Colors.white, fontSize: 10)),
          ),),

          // Add to card button
          Positioned(
            right: 10,
              bottom: 110,
              child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade100
            ),
            child: IconButton(onPressed: (){
              setState(() {
                isVisible = !isVisible;
              });
            },icon: const Icon(Icons.add, color: Colors.red,size: 15,),),
          )),

          // Add card numbers for purchasing
          Visibility(
            visible: isVisible,
            child: Positioned(
                right: 10,
                bottom: 110,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: IconButton(onPressed: (){
                          if(count<=1){
                            setState(() {
                              isVisible = false;
                            });
                          }else{
                            setState(() {
                              count--;
                            });
                          }
                        },icon: const Icon(Icons.remove, color: Colors.red,size: 15,),),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(count.toString(),style: const TextStyle(color: Colors.white,)),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: IconButton(onPressed: (){
                          setState(() {
                            count++;
                          });
                        },icon: const Icon(Icons.add, color: Colors.red,size: 15,),),
                      ),
                    ],
                  )
                )),
          ),
        ],
      ),
    );
  }
}
