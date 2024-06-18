import 'package:flutter/material.dart';

import '../../screens/home_widgets/crazzy_slides.dart';
import '../crazzy_services/crazzy_api_services.dart';

class ProductDetails extends StatefulWidget {
   ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
  
  CrazzyApiServices crazzyApiServices = CrazzyApiServices();
  
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Details"),
      ),
      body: Container(
        child: FutureBuilder(
          future: crazzyApiServices.fetchDetailProductList(),
          builder: (context,snapshot){
            if(!snapshot.data){
              return const Center(child: CircularProgressIndicator(),);
            }else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                  itemBuilder: (context, index){
                  return Container(
                    child: Image.network(snapshot.data["variant_images"][0][index]),
                  );
                  });
            }
          },
        ),
      ),
    );
  }
}
