import 'package:flutter/material.dart';

import '../../../widgets/custom_button.dart';
import '../../cart_page.dart';

class VariantDetailPage extends StatefulWidget {
  String id, image1, image2, title, price, stockStatus, colorText1, colorText2, ram1, ram2, storage1,storage2, slug;
  VariantDetailPage({
    super.key,
    required this.id,
    required this.image1,
    required this.image2,
    required this.title,
    required this.price,
    required this.stockStatus,
    required this.colorText1,
    required this.colorText2,
    required this.ram1,
    required this.ram2,
    required this.storage1,
    required this.storage2,
    required this.slug,
  });

  @override
  State<VariantDetailPage> createState() => _VariantDetailPageState();
}

class _VariantDetailPageState extends State<VariantDetailPage> {
  int cardCount = 1;
  bool favorite = false;
  String? selectedImage;
  bool choose = true;
  bool choose1 = false;
  bool choose2 = false;

  @override
  void initState() {
    super.initState();
    selectedImage = widget.image1; // Initialize with the first image
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Item Details"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 300,
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    selectedImage!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.title,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          favorite = !favorite;
                        });
                      },
                      icon: favorite == true? const Icon(Icons.favorite_rounded, color: Colors.red,) : const Icon(Icons.favorite_rounded),
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SHOE STORE",
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₹ ${widget.price}",
                      style: const TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 30, bottom: 10),
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.red.shade100
                      ),
                      child: const Center(
                        child: Text(
                          "Pcs",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "0.0",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Text(
                            "(0)",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: widget.stockStatus == "Out-stock"? Colors.red : Colors.green
                      ),
                      child: Center(
                        child: Text(
                          widget.stockStatus,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ]),
              const Padding(padding: EdgeInsets.all(10), child: Divider()),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "COLOR",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                          color: choose == true? Colors.red:Colors.grey,
                          onTap: () {
                            setState(() {
                              selectedImage = widget.image1;
                              choose = !choose;
                            });
                          },
                          text: widget.colorText1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                          color: choose == false? Colors.red:Colors.grey,
                          onTap: () {
                            setState(() {
                              selectedImage = widget.image2;
                              choose = !choose;
                            });
                      }, text: widget.colorText2),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RAM",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                          color: choose1 == true?Colors.red:Colors.grey,
                          onTap: () {
                            setState(() {
                              choose1 = !choose1;
                            });
                      }, text: widget.ram1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                          color: choose1 == false?Colors.red:Colors.grey,
                          onTap: () {
                            setState(() {
                              choose1 = !choose1;
                            });
                          }, text: widget.ram2),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "STORAGE",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                          color: choose2 == true?Colors.red:Colors.grey,
                          onTap: () {
                            setState(() {
                              choose2 = !choose2;
                            });
                      }, text: widget.storage1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                          color: choose2 == false?Colors.red:Colors.grey,
                          onTap: () {
                            setState(() {
                              choose2 = !choose2;
                            });
                          }, text: widget.storage2),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Quantity",
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.only(right: 15, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  if(cardCount>1){
                                    cardCount--;
                                  }else{
                                    cardCount;
                                  }

                                });
                              },
                              child: const Text(
                                "-",
                                style: TextStyle(fontSize: 20),
                              )),
                          Text("${cardCount}"),
                          TextButton(onPressed: () {
                            setState(() {
                              cardCount++;
                            });
                          }, child: const Text("+"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, top: 10),
                child: Row(
                  children: [
                    const Text(
                      "Total Amount",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " ₹ ${double.parse(widget.price) * cardCount}",
                      style: const TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, top: 10),
                child: const Row(
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      widget.slug,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: CustomButton(
                        color: Colors.red, onTap: () {}, text: "Add To Cart")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
