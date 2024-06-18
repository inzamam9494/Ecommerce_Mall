import 'package:dorkar_mall/crazzyhub/screens/m_store_screens/controllers/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpayment/cfwebcheckoutpayment.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpaymentgateway/cfpaymentgatewayservice.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfsession/cfsession.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfenums.dart';
import 'package:get/get.dart';

import '../../common/widgets/const_radio_button.dart';
import '../../const/const_height.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';
import 'cashfree_page.dart';

class MStorePaymentScreen extends StatelessWidget {
  MStorePaymentScreen({super.key});

 ProductDetailsController productDetailsController = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white30,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.secondary600,
          onPressed: productDetailsController.initialPay
          //(){ Get.to(CashfreePage());}
          , label: Text('Confirm',style: AppTextStyles.kCaption12SemiBoldTextStyle.copyWith(color: AppColors.white),).marginOnly(left: h100, right: h100)),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.secondary600,
        title:  Text("Payment Page", style: AppTextStyles.kCaption14RegularTextStyle.copyWith(color: Colors.white)),
        actions: [
          // IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_rounded)),
          // IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: Container(
        child: Obx(() => Column(
          children: [
            CustomRadioButton(options: [
              RadioOption(title: 'Online',value: 1,icon: Icons.payments_outlined),
              RadioOption(title: 'Cash On Delivery',value: 2,icon: Icons.delivery_dining_outlined),
            ],groupValue: productDetailsController.selectedValue2.value,
              onChanged: (value, title){
                productDetailsController.setRadiobuttonForNotification(value, title);
                debugPrint("value: $value title : $title",);
              },)
          ],
        )),
      ),
    );
  }
}

void initialPay(){
  try{
    var session = CFSessionBuilder().setEnvironment(CFEnvironment.PRODUCTION).setOrderId('order_id_always_unique').setPaymentSessionId('session_5YOUM0TUVA7qOz_1EhZvIhgSyR4PUgJoIl0H3QcdO0cofgFP0eJgnQ2UZmhujnm3LtIrPir5_ob_p2L6kiOqVU8H1dIwWTmr8c-pG5kZaNF').build();
    var cfWebCheckout = CFWebCheckoutPaymentBuilder().setSession(session).build();
    var cfPaymentGateway = CFPaymentGatewayService();
    cfPaymentGateway.setCallback((p0){
      print(p0);
    }, (p0,p1){
      print(p0.getMessage());
      print(p1);
    });
    cfPaymentGateway.doPayment(cfWebCheckout);
  }catch(e){
  }
}
