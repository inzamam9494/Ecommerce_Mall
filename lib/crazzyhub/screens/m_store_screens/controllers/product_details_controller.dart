import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dorkar_mall/controllers/const_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpayment/cfwebcheckoutpayment.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpaymentgateway/cfpaymentgatewayservice.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfsession/cfsession.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfenums.dart';
import 'package:get/get.dart';

import '../../../services/m_store_services/m_store_url.dart';
import '../../../services/models/m_store_new_product_detail_model.dart';
import '../m_store_home_page.dart';
import '../m_store_otp_page.dart';

class ProductDetailsController extends GetxController{


  var productDetailsList = ProductVariantValueList().obs;
  // var productDetailsList = <ProductVariantValueList>[].obs;

  //TODO For Notification Page
  RxInt selectedValue2 = 1.obs;
  var selectedTitle2 = 'Online'.obs;

  void setRadiobuttonForNotification(int value2, String title2){
    selectedValue2.value = value2;
    selectedTitle2.value = title2;
  }

  final mobileNumberController = TextEditingController().obs;
  final optController = TextEditingController().obs;



  void initialPay(){
    try{
      var session = CFSessionBuilder().setEnvironment(CFEnvironment.PRODUCTION).setOrderId('130').
      setPaymentSessionId("session_4ctEnXN5aq53vFzvIoZdL8-YcCtSDfCDNbJ67v84OKPAFV61D2HMfy_PpJzMluJbOTqrgJy-WQUdTRjf2ln1rJTLaUhT4YVYgCJPs7MKrZww").build();
      var cfWebCheckout = CFWebCheckoutPaymentBuilder().setSession(session).build();
      var cfPaymentGateway = CFPaymentGatewayService();
      cfPaymentGateway.setCallback((p0){
        debugPrint('cashFree ${p0}');
      }, (p0,p1){
        debugPrint("cashFree ${p0.getMessage()}");
        debugPrint("cashFree ${p1}");
      });
      cfPaymentGateway.doPayment(cfWebCheckout);
    }catch(e){
      debugPrint('CashFreeException ${e}');
    }
  }

  Future addToCart() async {
    final dio = Dio();
    try{
      final response = await dio.post(MStoreUrl.addToCart,
      data: {
        'product_id' : 1149
      },
      options: Options(
        headers: {
          "Token" : userToken,
          'Store-Id' : 3
        }
      ));
      var result = response.data;
      debugPrint(' AddToCard ${result}');
    }catch(e){
      debugPrint(' AddToCardException ${e}');
    }
  }

  Future cartList() async {
    final dio = Dio();
    try{
      final response = await dio.get(MStoreUrl.cardList,
      options: Options(
        headers: {
          "Token" : userToken,
          'Store-Id' : 3
        }
      ));
      var result = response.data;
      debugPrint(' CardList ${result}');
    }catch(e){
      debugPrint(' CartListException ${e}');
    }
  }

  Future login() async{
    final dio = Dio();
    try{
      final response = await dio.post(MStoreUrl.login,
      data: {
        'mobile_number' : mobileNumberController.value.text
      },
      options: Options(
        headers: {
          'Store-Id' : 3
        },
      ));
      var result = response.data;
      debugPrint(' Login ${result}');
      ConstToast.to.showSuccess("${result['message']}");
      Get.to(MStoreOtpPage());
    }catch(e){
      debugPrint(' LoginException ${e}');

    }
  }

  Future verifyLoginOTP() async{
    final dio = Dio();
    try{
      final response = await dio.post(MStoreUrl.verifyLoginOTP,
      data: {
        'mobile_number' : mobileNumberController.value.text,
        'mobile_otp' : optController.value.text
      },
      options: Options(
        headers: {
          'Store-Id' : 3
        }
      ));
      var result = response.data;
      debugPrint(' VerifyOTP ${result} ');
      ConstToast.to.showSuccess("${result['message']}");
      Get.to(MStoreHomePage());
    }catch(e){
      debugPrint(' VerifyOTPException ${e} ');
    }
  }





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
      var result = response.data['data'][0]['product_deatils'][0]['product_variant_value_list'][0];
      print(('result $result'));

      var satyam = ProductVariantValueList.fromJson(result);
      print(('satyam $satyam'));

      productDetailsList.value = satyam;
      // var data = result['data'] as List;
      // mStoreProductDetail.value = data.map((item) => DataProduct.fromJson(item)).toList();
update();
      debugPrint('fetchProductDetail -------------------------------------- ${productDetailsList.value.variantPrice}');
      // var productDetailData = mStoreProductDetail[0].productDeatils![0].productVariantValueList![0];

    }catch(e){
      e.toString();
    }
    finally{
      // isLoading(false);

    }
  }







}