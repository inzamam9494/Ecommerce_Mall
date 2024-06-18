import 'package:flutter/material.dart';

import '../../../../widgets/custom_button.dart';

class FashionStoreCard extends StatelessWidget {
  void Function()? onTap;
  FashionStoreCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                      width: double.maxFinite,
                      "images/Grocery.jpg"),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Unique Jewellery", style: TextStyle(
                          fontWeight: FontWeight.w700
                      ),),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.red,),
                      Text("Kolkata", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        color: Colors.red.shade100,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            children: [
                              Icon(Icons.add_location_alt_outlined, color: Colors.greenAccent,),
                              Text("2.79 km ", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),
                              Text("From You", style: TextStyle(color: Colors.red),)
                            ],
                          ),
                        ),
                      ),
                      CustomButton(color: Colors.red, onTap: (){}, text: "Visit")
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              left: 10,
              top: 160,
              child: Row(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(2),
                          height:70,
                          width: 60,
                          child: Image.asset("images/park_avenue.jpg"),
                        ),
                        const Card(
                          child: Row(
                            children: [
                              Text("0.0"),
                              Icon(Icons.star, color: Colors.red,size: 15,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          const Positioned(
              top: 20,
              right: 20,
              child: Icon(Icons.favorite_rounded, color: Colors.red,))
        ],
      ),
    );
  }
}
