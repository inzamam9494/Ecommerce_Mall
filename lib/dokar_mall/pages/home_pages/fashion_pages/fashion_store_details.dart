import 'package:flutter/material.dart';

class FashionStoreDetails extends StatelessWidget {
  const FashionStoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red)
          ,child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
          icon: const Icon(Icons.arrow_back_ios), color: Colors.white,),),
        ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Image.asset("images/Grocery.jpg"),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                        ),
                        child: Image.asset(
                          height: 50,
                            width: 50,
                            "images/mama_earth.jpg"),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Rajantika Jewellers"),
                          Text("Kolkata", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10
                          ),),
                          Text("Minimum Order Amount", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10
                          ),)
                        ],
                      ),
                      const Icon(Icons.favorite, color: Colors.grey,),
                      const Icon(Icons.share),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.red,),
                              Text("0.0")
                            ],
                          ),
                          Text("0 + ratings")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.location_on, color: Colors.red,),
                          Text("Location")
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timer, color: Colors.red,),
                              Text("1 - 2 days")
                            ],
                          ),
                          Text("Delivery Time")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Products", style: TextStyle(
                        fontWeight: FontWeight.w700
                      ),),
                      Icon(Icons.search, color: Colors.red,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
