import 'package:dorkar_mall/dokar_mall/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/const_height.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';
import 'controllers/product_details_controller.dart';
import 'm_store_otp_page.dart';

class MStoreLoginScreen extends StatelessWidget {
   MStoreLoginScreen({super.key});

  ProductDetailsController productDetailsController = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.secondary600,
        title:  Text("Login Page", style: AppTextStyles.kCaption12SemiBoldTextStyle.copyWith(color: Colors.white)),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(() => TextFormField(
             controller: productDetailsController.mobileNumberController.value,
             keyboardType: TextInputType.number,
             decoration: InputDecoration(
               hintText: 'Enter Mobile Number',
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0), // Default border color and width
            borderRadius: BorderRadius.circular(8.0),
             ),
               focusedBorder: OutlineInputBorder(
                 borderSide: const BorderSide(color: Colors.blue, width: 2.0), // Border color and width when focused
                 borderRadius: BorderRadius.circular(8.0),
               ),
           ))).marginAll(h10),

             SizedBox(
              width: double.maxFinite,
              child: CustomButton(color: AppColors.secondary600,
                  onTap: (){
                productDetailsController.login();
                // productDetailsController.verifyLoginOTP();
                  }, text: 'Send OTP'),
            ).paddingAll(h10)
          ],
        ),
      ),
    );
  }
}
