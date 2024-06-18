

import 'package:dio/dio.dart';
import 'package:dorkar_mall/crazzyhub/services/m_store_services/m_store_url.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:http/http.dart';
import '../models/m_store_new_product_detail_model.dart';
import '../models/m_store_product_model.dart';
import '../models/m_store_slider_model.dart';

class MStoreServicesController extends GetxController{

  var mStoreSliderListData = <SliderData>[].obs;

  var mStoreProductData = <ProductList>[].obs;

  var mStoreProductDetail = <DataProduct>[].obs;

  RxBool isLoading = false.obs;



  RxString productID = ''.obs;
  RxString variantID = ''.obs;

  // RxInt productId = 805.obs;
  // RxInt variantId = 1149.obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProductData();
    fetchMStoreSliderData();
    // fetchProductDetail(MStoreServicesController().productID.toString(), MStoreServicesController().variantID.toString());
    // fetchProductDetail(mStoreProductData[0].id.toString(),mStoreProductData[0].variantId.toString());
    // fetchProductDetail('805','1149');
    // fetchProductDetail('608','80');
    // fetchProductDetail('607','1150');
    // fetchProductDetail(productId, variantId);
  }

  // Slider api fetching
  Future fetchMStoreSliderData() async {

    isLoading(true);

    final dio = Dio();
    try{
      debugPrint('url : ${MStoreUrl.sliderList}');
      var response = await dio.get(MStoreUrl.sliderList,
      options: Options(
        headers: {
          "Token" : userToken,
          'Store-Id': 3
          // "Content-type" : "application.json"
        }
      ));
      // debugPrint('Response Data -------------------------------------- ${response}');
      var result = response.data;
      // var data = result['data'];
      var data = result['data'] as List;
        mStoreSliderListData.value = data.map((item) => SliderData.fromJson(item)).toList();
        debugPrint("First slider image: ${mStoreSliderListData.length}");
      // var test = MSliderStoreListModel.fromJson(result);
      // mStoreSliderListData = test as RxList<SliderData>;
      isLoading(false);

      debugPrint("ROHIT ${mStoreSliderListData.length}");
          update();
      // debugPrint('Response Data -------------------------------------- ${data}');
    }catch(e){
      isLoading(false);

      debugPrint('fetchMStoreSliderData Error -------------------------------------- $e');
    }finally{
      isLoading(false);

    }
  }

  // Product Listing
Future fetchProductData() async{

    final dio = Dio();
    try{
      final response = await dio.post(MStoreUrl.productList,
      options: Options(
        headers: {
          "Token" : userToken,
          'Store-Id': 3
        },
      ));
      var result = response.data;
      var data = result['data']['product_list'] as List;
      mStoreProductData.value = data.map((item) => ProductList.fromJson(item)).toList();



      debugPrint('Response Data -------------------------------------- ${data}');
    }catch(e){
      e.toString();
    }
}

// Product Detail List
Future fetchProductDetail(String productId, String variantId) async{

    debugPrint('productID : $productId, variantID: $variantId');
    // productId = productID.value;
    // variantId = variantID.value;
    final dio = Dio();
    try{
      final response = await dio.post(MStoreUrl.productDetail,
      // queryParameters: {'product_id' : 805, 'variant_id': 1149},
          data: {'product_id' : productId, 'variant_id': variantId},
      //     data: {'product_id' : 608, 'variant_id': 80},
      //     data: {'product_id' : 805, 'variant_id': 1149},
      options: Options(
        headers: {
          "Token" : userToken,
          'Store-Id': 3
        }
      ));

      // productID.value =  productId;
      // variantID.value = variantId;
      var result = response.data;
      var data = result['data'] as List;
      mStoreProductDetail.value = data.map((item) => DataProduct.fromJson(item)).toList();
// update();
      debugPrint('fetchProductDetail -------------------------------------- ${mStoreProductDetail.value[0].productDeatils?[0].productVariantValueList?[0].productId}');

      // var productDetailData = mStoreProductDetail[0].productDeatils![0].productVariantValueList![0];

    }catch(e){
      e.toString();
    }
    finally{
      isLoading(false);

    }
}

}