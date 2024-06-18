import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../services/crazzy_services/crazzy_app_url.dart';
import '../services/models/crazzy_mobile_detail_page_model.dart';

class ProductDetailController extends GetxController{
  RxList productDetails = <Product>[].obs;

  Future fetchProductDetails(productId, variantId) async{

    try{
      final response = await http.get(Uri.parse('${CrazzyAppUrl.productDetail}?product_id=${productId.toString()}&variant_id=${variantId.toString()}'),

          headers: {
            "Authorization" : publicToken,
            "Content-type" : "application.json"
          }

      );

      var data = json.decode(response.body);


      dynamic satyam = Product.fromJson(data['data']);
      productDetails.assignAll(satyam);

      productDetails.value = data;
      debugPrint('product data $productDetails');
      update();


    }
        catch(e){
      debugPrint('product error $e');
        }

  }
}