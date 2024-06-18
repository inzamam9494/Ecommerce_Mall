import 'package:flutter/material.dart';

class FashionCardBox extends StatelessWidget {
  final void Function()? onTap;
  final String textProduct;
  final String productImage;
  final String productPrice;
  const FashionCardBox({super.key, required this.onTap, required this.textProduct, required this.productImage, required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 170,
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                  width: 170,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                      child: Image.network(productImage,fit: BoxFit.fill,))),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                        children:[ Text("SHOE STORE",
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                        ]
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[ Flexible(
                          child: Text(textProduct,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700
                            ),),
                        ),
                        ]
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size:16 ,color: Colors.red,),
                        Text(" (0.0) ",style: TextStyle(
                        ),),
                        Text("(0)",style: TextStyle(
                          color: Colors.grey,
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
               const Spacer(),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("₹ $productPrice",style: const TextStyle(
                    ),),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                    ),
                    child: const Icon(Icons.add_shopping_cart, color: Colors.white,),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
