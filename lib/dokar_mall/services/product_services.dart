import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'app_url.dart';

// class ProductService {
//   static Future<List<Map<String, dynamic>>> fetchProducts() async {
//     final url = "${AppUrl.baseUrl}/api/product-details-api/?product_id=3796&variant_id=6946";
//     final headers = {
//       "Authorization": "7c2b8693d001c79d4b5ed6ebc387ad6b862989dfjhjjhj"
//     };
//
//     try {
//       final response = await http.get(Uri.parse(url), headers: {
//         "Authorization": "7c2b8693d001c79d4b5ed6ebc387ad6b862989dfjhjjhj",
//         "Content-type" : "application.json"
//       });
//         var result = jsonDecode(response.body);
//       print(result);
//       debugPrint('${response.statusCode}  response');
//       log(response.statusCode.toString());
//       if (response.statusCode == 200) {
//         List<Map<String, dynamic>> productList = List<Map<String, dynamic>>.from(result);
//         print(productList.toString());
//         return productList;
//       } else {
//         print('Failed to load products: ${response.statusCode}');
//         return [];
//       }
//     } catch (e) {
//       print(e.toString());
//       return [];
//     }
//   }
// }

class ProductService {

  var productList;
  var relatedProductList;

   Future fetchProducts() async{
    final dio = Dio();
    try{
      Response response = await dio.get("${AppUrl.baseUrl}/api/product-details-api/?product_id=3796&variant_id=6946",
      options: Options(
        headers:  {"Authorization" : "7c2b8693d001c79d4b5ed6ebc387ad6b862989dfjhjjhj",
        "Content-type" : "application.json"}
      ));
      var result = response.data;
      // print(result);
       // productList = result;
       productList = result["data"];
       relatedProductList = result[
         "related_products"
       ];
      print(relatedProductList.toString());
      return relatedProductList;
    }catch(e){
      print(e.toString());
      return[];
    }
  }

  Future fetchProductsDetails() async{
    final dio = Dio();
    try{
      Response response = await dio.get("${AppUrl.baseUrl}/api/product-details-api/?product_id=3796&variant_id=6946",
      // Response response = await dio.get("${AppUrl.baseUrl}/api/product-details-api/?product_id=3796&variant_id=6946",
          options: Options(
              headers:  {"Authorization" : "7c2b8693d001c79d4b5ed6ebc387ad6b862989dfjhjjhj",
                "Content-type" : "application.json"}
          ));
      var result = response.data;
      // print(result);
      // productList = result;
      productList = result["data"];
      relatedProductList = result["related_products"];
      print(productList.toString());
      return productList;
    }catch(e){
      print(e.toString());
      return[];
    }
  }

}


// static final Dio _dio = Dio();
// static final FlutterSecureStorage _storage = FlutterSecureStorage();
//   ProductService() {
//     // Add an interceptor for token handling
//     _dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (options, handler) async {
//         // Get the token from secure storage
//         String? token = await _storage.read(key: '7c2b8693d001c79d4b5ed6ebc387ad6b862989dfjhjjhj');
//         if (token != null) {
//           options.headers['Authorization'] = 'Bearer $token';
//         }
//         return handler.next(options);
//       },
//     ));
//   }
//
//   static Future<List<Map<String, dynamic>>> fetchProducts() async {
//     try {
//       Response response = await _dio.get(AppUrl.baseUrl);
//       List<dynamic> result = response.data;
//       List<Map<String, dynamic>> productList = List<Map<String, dynamic>>.from(result);
//       print(productList.toString());
//       return productList;
//     } catch (e) {
//       print(e.toString());
//       return [];
//     }
//   }
//
// }