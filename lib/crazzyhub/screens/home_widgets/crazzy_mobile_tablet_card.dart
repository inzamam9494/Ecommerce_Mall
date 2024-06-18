import 'dart:developer';
import 'package:dorkar_mall/crazzyhub/screens/home_widgets/crazzy_mobile_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../services/crazzy_services/crazzy_api_services.dart';

class CrazyMobileTabletCard extends StatefulWidget {
   CrazyMobileTabletCard({super.key});

  @override
  State<CrazyMobileTabletCard> createState() => _CrazyMobileTabletCardState();
}

class _CrazyMobileTabletCardState extends State<CrazyMobileTabletCard> {
  
  CrazzyApiServices crazzyApiServices = CrazzyApiServices();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: crazzyApiServices.fetchMobileProductList(),
        builder: (context,snapshot){
          if(!snapshot.hasData){
            return const Center(child: CircularProgressIndicator());
          }else{
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                  itemBuilder: (context, index){
                  var productList = snapshot.data[index];
                  // log(productList['id'].toString());
                  // log(productList['variant_id'].toString());
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CrazzyMobileDetailPage(
                        productID: productList['id'].toString(),
                        variantID: productList['variant_id'].toString(),
                      )));
                      log(productList['id'].toString());
                      log(productList['variant_id'].toString());
                    },
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  child: Image.network(productList["variant_image"]),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(productList["variant_name"]),
                                      Text(productList["stock_sataus"], style: const TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.w700),),
                                      Text('₹ ${productList["price"]}'),
                                      Text("₹ ${productList["mrp"]}".toString(), style: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Positioned(
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  padding:  const EdgeInsets.only(left: 4, right: 4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green.shade300,
                                  ),
                                  child:  Text("${productList["discount_percent"]}% OFF",style: const TextStyle(color: Colors.white, fontSize: 10)),
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                  }),
            );
          }
        },
      ),
    );
  }
}
