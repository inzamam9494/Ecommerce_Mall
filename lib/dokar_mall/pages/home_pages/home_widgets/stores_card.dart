import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const StoreCard({super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: SizedBox(
        width: 200,
        child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                      child: Image.asset(image, fit: BoxFit.fill,)),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Icon(Icons.favorite_rounded, color: Colors.white,)
                    ],),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child:  Column(
                  children: [

                    Row(
                      children: [
                        Flexible(
                          child: Text( title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                            ),),
                        ),
                      ],
                    ),
                    Row(
                     children: [
                       Text(subtitle,
                       style: const TextStyle(
                           color: Colors.grey,
                           fontSize: 12
                       ),),
                     ],
                   ),
                    const Row(
                      children: [
                        Icon(Icons.star, size: 10,color: Colors.grey,),
                        Icon(Icons.star, size: 10,color: Colors.grey,),
                        Icon(Icons.star, size: 10,color: Colors.grey,),
                        Icon(Icons.star, size: 10,color: Colors.grey,),
                        Icon(Icons.star, size: 10,color: Colors.grey,),
                        Text("(0)",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
