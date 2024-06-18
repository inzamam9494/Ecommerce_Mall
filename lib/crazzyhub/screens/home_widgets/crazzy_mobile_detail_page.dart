import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../dokar_mall/widgets/custom_button.dart';
import '../../controller/product_detail_controller.dart';
import '../../services/crazzy_services/crazzy_api_services.dart';
import '../crazzy_mobile_detail_widget/color_card_options.dart';
import '../crazzy_mobile_detail_widget/mobile_detail_slider.dart';
import '../crazzy_mobile_detail_widget/ram_card_options.dart';

class CrazzyMobileDetailPage extends StatefulWidget {
  final productID, variantID;

  const CrazzyMobileDetailPage({super.key, this.productID, this.variantID});

  @override
  State<CrazzyMobileDetailPage> createState() => _CrazzyMobileDetailPageState();
}

class _CrazzyMobileDetailPageState extends State<CrazzyMobileDetailPage> {
  int cardCount = 1;

  // for ram
  var isSelected = false;
  var isSelected2 = false;
  var isSelected3 = false;

  // for storage
  var isSelected4 = false;
  var isSelected5 = false;
  var isSelected6 = false;
  var isSelected7 = false;

  final ProductDetailController productDetailController =
      Get.put(ProductDetailController());

  @override
  void initState() {
    // TODO: implement initState
    log(widget.productID);
    log(widget.variantID);
    CrazzyApiServices()
        .fetchMobileDetailProductList(widget.productID, widget.variantID);
    // productDetailController.fetchProductDetails(widget.productID, widget.variantID);
    super.initState();
  }

  CrazzyApiServices crazzyApiServices = CrazzyApiServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: const Text(
          "Item Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const CartPage()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //   Mobile Detail Slider
            MobileDetailSlider(
              productID: widget.productID,
              variantID: widget.variantID,
            ),

            // Mobile title name
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  FutureBuilder(
                      future: crazzyApiServices.fetchMobileDetailProductList(
                          widget.productID, widget.variantID),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const CircularProgressIndicator();
                        } else {
                          return Text(
                            snapshot.data['product_variant_name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          );
                        }
                      }),
                  const Divider()
                ],
              ),
            ),

            //   Mobile Color Card Options
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.all(12),
                    child: const Text("Colors",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20))),
              ],
            ),
            Row(
              children: [
                FutureBuilder(
                    future: crazzyApiServices.fetchMobileDetailProductList(
                        widget.productID, widget.variantID),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const CircularProgressIndicator();
                      } else {
                        return ColorCardOption(
                          color: Colors.blue,
                          text: snapshot.data["variant_color_values"][0]["value"],
                          image: snapshot.data["variant_color_values"][0]["variant_image"],
                        );
                      }
                    }),
                FutureBuilder(
                    future: crazzyApiServices.fetchMobileDetailProductList(
                        widget.productID, widget.variantID),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const CircularProgressIndicator();
                      } else {
                        return ColorCardOption(
                          color: Colors.blue,
                          text: snapshot.data["variant_color_values"][1]["value"],
                          image: snapshot.data["variant_color_values"][1]["variant_image"],
                        );
                      }
                    }),
                FutureBuilder(
                    future: crazzyApiServices.fetchMobileDetailProductList(
                        widget.productID, widget.variantID),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const CircularProgressIndicator();
                      } else {
                        return ColorCardOption(
                          color: Colors.blue,
                          text: snapshot.data["variant_color_values"][2]["value"],
                          image: snapshot.data["variant_color_values"][2]["variant_image"],
                        );
                      }
                    }),
              ],
            ),

            //   Mobile Ram Option
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.all(12),
                    child: const Text("RAM",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20))),
              ],
            ),
            Row(
              children: [
                RamCardOption(
                  color: isSelected == true ? Colors.blue : Colors.grey,
                  text: '8 GB',
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                      isSelected2 = false;
                      isSelected3 = false;
                    });
                  },
                ),
                RamCardOption(
                  color: isSelected2 == true ? Colors.blue : Colors.grey,
                  text: '16 GB',
                  onTap: () {
                    setState(() {
                      isSelected2 = !isSelected2;
                      isSelected3 = false;
                      isSelected = false;
                    });
                  },
                ),
                RamCardOption(
                  color: isSelected3 == true ? Colors.blue : Colors.grey,
                  text: '32 GB',
                  onTap: () {
                    setState(() {
                      isSelected3 = !isSelected3;
                      isSelected = false;
                      isSelected2 = false;
                    });
                  },
                ),
                // RamCardOption(color: Colors.blue, text: '16 GB', onTap: () {  },),
                // RamCardOption(color: Colors.blue, text: '32 GB', onTap: () {  },)
              ],
            ),

            //   Mobile Storage Option
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.all(12),
                    child: const Text("STORAGE",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20))),
              ],
            ),
            Row(
              children: [
                RamCardOption(
                  color: isSelected4 == true ? Colors.blue : Colors.grey,
                  text: '32 GB',
                  onTap: () {
                    setState(() {
                      isSelected4 = !isSelected4;
                      isSelected5 = false;
                      isSelected6 = false;
                      isSelected7 = false;
                    });
                  },
                ),
                RamCardOption(
                  color: isSelected5 == true ? Colors.blue : Colors.grey,
                  text: '64 GB',
                  onTap: () {
                    setState(() {
                      isSelected5 = !isSelected5;
                      isSelected4 = false;
                      isSelected6 = false;
                      isSelected7 = false;
                    });
                  },
                ),
                RamCardOption(
                  color: isSelected6 == true ? Colors.blue : Colors.grey,
                  text: '128 GB',
                  onTap: () {
                    setState(() {
                      isSelected6 = !isSelected6;
                      isSelected4 = false;
                      isSelected5 = false;
                      isSelected7 = false;
                    });
                  },
                ),
                RamCardOption(
                  color: isSelected7 == true ? Colors.blue : Colors.grey,
                  text: '256 GB',
                  onTap: () {
                    setState(() {
                      isSelected7 = !isSelected7;
                      isSelected4 = false;
                      isSelected5 = false;
                      isSelected6 = false;
                    });
                  },
                ),

                // RamCardOption(color: Colors.blue, text: '32 GB', onTap: () {  },),
                // RamCardOption(color: Colors.blue, text: '64 GB', onTap: () {  },),
                // RamCardOption(color: Colors.blue, text: '128 GB', onTap: () {  },),
                // RamCardOption(color: Colors.blue, text: '256 GB', onTap: () {  },),
              ],
            ),

            //   Quantity Widget
            Container(
              margin: const EdgeInsets.only(left: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Quantity",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (cardCount > 1) {
                                  cardCount--;
                                } else {
                                  cardCount;
                                }
                              });
                            },
                            icon: Icon(Icons.remove)),
                        Text("${cardCount}"),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                cardCount++;
                              });
                            },
                            icon: const Icon(Icons.add))
                      ],
                    ),
                  )
                ],
              ),
            ),

            // for Total amount
            Container(
              margin: const EdgeInsets.only(left: 15, top: 10),
              child: Row(
                children: [
                  const Text(
                    "Total Amount",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  FutureBuilder(
                      future: crazzyApiServices.fetchMobileDetailProductList(widget.productID, widget.variantID),
                      builder: (context, snapshot){
                        if(!snapshot.hasData){
                          return const Text("Loading....");
                        }else{
                          return Text(
                            " ₹ ${snapshot.data['price'] * cardCount}",
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          );
                        }
                      }),
                ],
              ),
            ),

            // for description
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
              child: const Row(
                children: [
                  Text(
                    "Brand New Phone for you",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),

            // for add to cart
            Container(
              margin: const EdgeInsets.all(10),
              child: SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: CustomButton(
                      color: Colors.blue, onTap: () {}, text: "Add To Cart")),
            )
          ],
        ),
      ),
    );
  }
}
