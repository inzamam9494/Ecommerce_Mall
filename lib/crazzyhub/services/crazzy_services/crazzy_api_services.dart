
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import 'crazzy_app_url.dart';

class CrazzyApiServices{

  // for Slide List

  Future fetchSlides() async{
    var slides = [];
    final dio = Dio();
    try{
      Response response = await dio.get(CrazzyAppUrl.sliderList,
      options: Options(
        headers: {
          'Token' : userToken,
          'Store-Id': 3
          // "Authorization" : publicToken,
          // "Content-type" : "application.json"
        }));
      var result = response.data;
      slides = result["data"];
      // print(slides.toString());
      return slides;
    }catch(e){
      print(e.toString());
      return "Error";
    }
  }

  // for Brand List

  Future fetchBrandList() async{
    var brandList = [];
    final dio = Dio();
    try{
      Response response = await dio.get(CrazzyAppUrl.brandList,
          options: Options(
              headers: {
                "Authorization" : publicToken,
                "Content-type" : "application.json"
              }));
      var result = response.data;
      brandList = result["data"];
      // print(brandList.toString());
      return brandList;
    }catch(e){
      print(e.toString());
      return "Error";
    }
  }

//   for Mobile Product List
  Future fetchMobileProductList() async{
    var productList = [];
    final dio = Dio();
    try{
      Response response = await dio.get(CrazzyAppUrl.mobileProductList,
          options: Options(
              headers: {
                "Authorization" : publicToken,
                "Content-type" : "application.json"
              }));
      var result = response.data;
      productList = result["data"][0]["product_deatils"];
      // print(productList.toString());
      return productList;
    }catch(e){
      print(e.toString());
      return "Error";
    }
  }

  //   for Product Detail
  Future fetchMobileDetailProductList(productId, variantId) async{
    var productList;
    final dio = Dio();
    try{
      Response response = await dio.get(CrazzyAppUrl.productDetail,
          queryParameters: {"product_id": productId, "variant_id" : variantId},
          options: Options(
              headers: {
                "Authorization" : publicToken,
                "Content-type" : "application.json"
              }));
      var result = response.data;
      productList = result["data"];
      print(productList.toString());
      return productList;
    }catch(e){
      print(e.toString());
      debugPrint("Product Error $e");
      return "Error";
    }
  }

  Future fetchDetailProductList() async{
    var productList = [];
    final dio = Dio();
    try{
      Response response = await dio.get(CrazzyAppUrl.productDetail,
          // queryParameters: {"product_id": productId, "variant_id" : variantId},
          options: Options(
              headers: {
                "Authorization" : publicToken,
                "Content-type" : "application.json"
              }));
      var result = response.data;
      productList = result["data"];
      print(productList.toString());
      return productList;
    }catch(e){
      print(e.toString());
      debugPrint("Product Error $e");
      return "Error";
    }
  }

}